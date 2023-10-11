/// SPDX-License-Identifier: AGPL-3.0-or-later
part of 'archethic_wallet_client_base.dart';

class WebsocketArchethicDappClient
    with ArchechicDAppClientSessionChallenge
    implements ArchethicDAppClient {
  WebsocketArchethicDappClient();

  Peer? _client;
  final _connectionStateController =
      CachedBroadcastStreamController<ArchethicDappConnectionState>(
    const ArchethicDappConnectionState.disconnected(),
  );

  static const logName = 'WebsocketArchethicDappClient';

  static bool get isAvailable =>
      kIsWeb || Platform.isLinux || Platform.isMacOS || Platform.isWindows;

  final _subscriptionValues = StreamController<SubscriptionUpdate>.broadcast();

  @override
  ArchethicDappConnectionState get state => _connectionStateController.state;

  @override
  Stream<ArchethicDappConnectionState> get connectionStateStream =>
      _connectionStateController.stream;

  @override
  Future<void> connect() async {
    if (_client != null && !_client!.isClosed) {
      log(
        'Socket already opened. Connection abort.',
        name: logName,
      );
      return;
    }
    log(
      'Opening connection',
      name: logName,
    );
    _connectionStateController.add(
      const ArchethicDappConnectionState.connecting(),
    );
    final socket = await connectWebSocket(Uri.parse('ws://127.0.0.1:12345'));

    log(
      'Connection opened',
      name: logName,
    );
    _connectionStateController.add(
      const ArchethicDappConnectionState.connected(),
    );
    final client = Peer(socket.cast<String>());
    client.registerMethod(
      'addSubscriptionNotification',
      (params) async {
        log('Received value');
        final decodedPayload = RPCAuthenticatedMessage.fromJson(
          state.openedSession!,
          params.value,
        ).payload;

        _subscriptionValues.add(
          SubscriptionUpdate.fromJson(decodedPayload),
        );
      },
    );

    _client = client;
    unawaited(
      client.listen().then(
        (value) {
          log(
            'Connection closed',
            name: logName,
          );
          _connectionStateController.add(
            const ArchethicDappConnectionState.disconnected(),
          );
        },
      ),
    );
  }

  @override
  Future<void> close() async {
    await _client?.close();
    _client = null;
  }

  Future<Subscription<Map<String, dynamic>>> _subscribe({
    required String method,
    Map<String, dynamic> params = const {},
  }) async {
    final subscriptionData = await _sendAuthenticated(
      method: method,
      payload: params,
    );

    final subscriptionId =
        SubscribeResponse.fromJson(subscriptionData).subscriptionId;
    return Subscription(
      id: subscriptionId,
      updates: _subscriptionValues.stream
          .where((event) => event.subscriptionId == subscriptionId)
          .map((event) => event.data),
    );
  }

  Future<void> _unsubscribe({
    required String method,
    required String subscriptionId,
  }) =>
      _sendAuthenticated(
        method: method,
        payload: UnsubscribeRequest(subscriptionId: subscriptionId).toJson(),
      );

  @override
  Future<Result<Session, Failure>> openSession(
    OpenSessionRequest sessionRequest,
  ) =>
      Result.guard(() async {
        // Handshake
        final keypair = generateKeyPair();

        final handshakeResult = await _sendAnonymous(
          method: 'openSessionHandshake',
          payload: OpenSessionHandshakeRequest(
            pubKey: aelib.uint8ListToHex(keypair.publicKey!),
          ).toJson(),
        ).then((data) => OpenSessionHandshakeResponse.fromJson(data));

        final sessionAesKey = aelib.ecDecrypt(
          handshakeResult.aesKey,
          keypair.privateKey,
        );

        _connectionStateController.add(
          ArchethicDappConnectionState.connected(
            session: Session.waitingForValidation(
              createdAt: DateTime.now(),
              sessionId: handshakeResult.sessionId,
              aesKey: sessionAesKey,
            ),
          ),
        );

        // Impersonation challenge.
        final session = await _sendAuthenticated(
          method: 'openSessionChallenge',
          payload: OpenSessionChallengeRequest(
            sessionId: handshakeResult.sessionId,
            origin: sessionRequest.origin,
            challenge: sessionRequest.challenge,
            maxDuration: sessionRequest.maxDuration.inSeconds,
          ).toJson(),
        ).then(
          (value) => Session.validated(
            sessionId: handshakeResult.sessionId,
            aesKey: sessionAesKey,
            origin: sessionRequest.origin,
            createdAt: OpenSessionChallengeResponse.fromJson(value).createdAt,
          ),
        );

        return session;
      }).then((sessionOrFailure) {
        _connectionStateController.add(
          sessionOrFailure.map(
            success: (success) => ArchethicDappConnectionState.connected(
              session: success.value,
            ),
            failure: (failure) => ArchethicDappConnectionState.connected(
              sessionFailure: failure.failure,
            ),
          ),
        );
        return sessionOrFailure;
      });

  Future<Map<String, dynamic>> _sendAnonymous({
    required String method,
    required Map<String, dynamic> payload,
  }) async =>
      _send(
        method: method,
        request: RPCAnonymousMessage(payload: payload),
      );

  Future<Map<String, dynamic>> _sendAuthenticated({
    required String method,
    Map<String, dynamic> payload = const {},
  }) async {
    final session = state.openedSession;
    if (session == null) {
      throw Failure.invalidSession();
    }

    return _send(
      method: method,
      request: RPCAuthenticatedMessage(
        payload: payload,
        session: session,
      ),
    );
  }

  Future<Map<String, dynamic>> _send({
    required String method,
    required RPCMessage request,
  }) async {
    if (_client == null || _client!.isClosed) {
      _client = null;
      await connect();
    }
    return _client!
        .sendRequest(
      method,
      request.toJson(),
    )
        .then(
      (result) async => request.map(
        anonymous: (anonymous) => RPCAnonymousMessage.fromJson(result).payload,
        authenticated: (authenticated) async {
          return RPCAuthenticatedMessage.fromJson(
            state.openedSession!,
            result,
          ).payload;
        },
      ),
      onError: (e, stack) {
        if (e is StateError) {
          log(
            'Bad connection state.',
            name: logName,
            error: e,
            stackTrace: stack,
          );
          throw Failure.connectivity();
        }
        if (e is RpcException) {
          log(
            'Rpc request failed.',
            name: logName,
            error: e,
            stackTrace: stack,
          );
          throw Failure.fromRpcException(e);
        }

        log(
          'Rpc request failed.',
          name: logName,
          error: e,
          stackTrace: stack,
        );
        throw Failure.other(
          cause: e,
          stack: stack,
        );
      },
    );
  }

  @override
  Future<Result<GetEndpointResult, Failure>> getEndpoint() => Result.guard(
        () => _sendAuthenticated(
          method: 'getEndpoint',
        ).then(
          (result) => GetEndpointResult.fromJson(result),
        ),
      );

  @override
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          method: 'sendTransaction',
          payload: data,
        ).then(
          (result) => SendTransactionResult.fromJson(result),
        ),
      );

  @override
  Future<Result<GetAccountsResult, Failure>> getAccounts() => Result.guard(
        () => _sendAuthenticated(
          method: 'getAccounts',
        ).then(
          (result) => GetAccountsResult.fromJson(result),
        ),
      );

  @override
  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount() =>
      Result.guard(
        () => _sendAuthenticated(
          method: 'getCurrentAccount',
        ).then(
          (result) => GetCurrentAccountResult.fromJson(result),
        ),
      );

  @override
  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    String serviceName,
  ) async =>
      Result.guard(
        () async {
          final subscriptionDTO = await _subscribe(
            method: 'subscribeAccount',
            params: SubscribeAccountRequest(serviceName: serviceName).toJson(),
          );
          return Subscription(
            id: subscriptionDTO.id,
            updates: subscriptionDTO.updates.map((accountData) {
              return Account.fromJson(accountData);
            }),
          );
        },
      );

  @override
  Future<Result<void, Failure>> unsubscribeAccount(
    String subscriptionId,
  ) async =>
      Result.guard(
        () => _unsubscribe(
          method: 'unsubscribeAccount',
          subscriptionId: subscriptionId,
        ),
      );

  @override
  Future<Result<Subscription<Account>, Failure>>
      subscribeCurrentAccount() async => Result.guard(
            () async {
              final subscriptionDTO = await _subscribe(
                method: 'subscribeCurrentAccount',
              );
              return Subscription(
                id: subscriptionDTO.id,
                updates: subscriptionDTO.updates.map((accountData) {
                  return Account.fromJson(accountData);
                }),
              );
            },
          );

  @override
  Future<void> unsubscribeCurrentAccount(String subscriptionId) async =>
      Result.guard(
        () => _unsubscribe(
          method: 'unsubscribeCurrentAccount',
          subscriptionId: subscriptionId,
        ),
      );

  @override
  Future<Result<SendTransactionResult, Failure>> addService(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          method: 'addService',
          payload: data,
        ).then(
          (result) => SendTransactionResult.fromJson(result),
        ),
      );

  @override
  Future<Result<GetServicesFromKeychainResult, Failure>>
      getServicesFromKeychain() => Result.guard(
            () => _sendAuthenticated(
              method: 'getServicesFromKeychain',
            ).then(
              (result) => GetServicesFromKeychainResult.fromJson(result),
            ),
          );

  @override
  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          method: 'keychainDeriveKeypair',
          payload: data,
        ).then(
          (result) => KeychainDeriveKeypairResult.fromJson(result),
        ),
      );

  @override
  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          method: 'keychainDeriveAddress',
          payload: data,
        ).then(
          (result) => KeychainDeriveAddressResult.fromJson(result),
        ),
      );

  @override
  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          method: 'signTransactions',
          payload: data,
        ).then(
          (result) => SignTransactionsResult.fromJson(result),
        ),
      );
}
