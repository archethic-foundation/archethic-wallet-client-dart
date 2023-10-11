/// SPDX-License-Identifier: AGPL-3.0-or-later
part of 'archethic_wallet_client_base.dart';

class DeeplinkArchethicDappClient
    with ArchechicDAppClientSessionChallenge
    implements ArchethicDAppClient {
  DeeplinkArchethicDappClient({
    required this.replyBaseUrl,
  });

  final _deeplinkRpcClient = DeeplinkRpcClient();
  final _connectionStateController =
      CachedBroadcastStreamController<ArchethicDappConnectionState>(
    const ArchethicDappConnectionState.connected(),
  );

  final String replyBaseUrl;
  final String requestBaseUrl = 'aewallet://archethic.tech';

  static bool get isAvailable => Platform.isAndroid || Platform.isIOS;

  bool handleRoute(String? path) => _deeplinkRpcClient.handleRoute(path);

  @override
  ArchethicDappConnectionState get state => _connectionStateController.state;

  @override
  Stream<ArchethicDappConnectionState> get connectionStateStream =>
      _connectionStateController.stream;

  @override
  Future<void> connect() async {
    return;
  }

  @override
  Future<void> close() async {
    return;
  }

  @override
  Future<Result<Session, Failure>> openSession(
    OpenSessionRequest sessionRequest,
  ) async =>
      Result.guard(() async {
        // Handshake
        final keypair = generateKeyPair();

        final handshakeResult = await _sendAnonymous(
          requestEndpoint: 'open_session_handshake',
          replyEndpoint: 'open_session_handshake_result',
          payload: OpenSessionHandshakeRequest(
            pubKey: aelib.uint8ListToHex(keypair.publicKey!),
          ).toJson(),
        ).then(OpenSessionHandshakeResponse.fromJson);

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
        return _sendAuthenticated(
          requestEndpoint: 'open_session_challenge',
          replyEndpoint: 'open_session_challenge_result',
          payload: OpenSessionChallengeRequest(
            sessionId: handshakeResult.sessionId,
            origin: sessionRequest.origin,
            challenge: aesEncrypt(
              sessionRequest.challenge,
              sessionAesKey,
            ),
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
    required String requestEndpoint,
    required String replyEndpoint,
    Map<String, dynamic> payload = const {},
  }) async =>
      _send(
        requestEndpoint: requestEndpoint,
        replyEndpoint: replyEndpoint,
        request: RPCAnonymousMessage(
          payload: payload,
        ),
      );
  Future<Map<String, dynamic>> _sendAuthenticated({
    required String requestEndpoint,
    required String replyEndpoint,
    Map<String, dynamic> payload = const {},
  }) async {
    final session = state.openedSession;
    if (session == null) {
      throw Failure.invalidSession();
    }

    return _send(
      requestEndpoint: requestEndpoint,
      replyEndpoint: replyEndpoint,
      request: RPCAuthenticatedMessage(
        payload: payload,
        session: session,
      ),
    );
  }

  Future<Map<String, dynamic>> _send({
    required String requestEndpoint,
    required String replyEndpoint,
    required RPCMessage request,
  }) async =>
      _deeplinkRpcClient
          .send(
            request: DeeplinkRpcRequest(
              requestUrl: '$requestBaseUrl/$requestEndpoint',
              replyUrl: '$replyBaseUrl/$replyEndpoint',
              params: request.toJson(),
            ),
          )
          .mapValueOrThrow(
            (value) async => request.map(
              anonymous: (anonymous) =>
                  RPCAnonymousMessage.fromJson(value).payload,
              authenticated: (authenticated) async {
                return RPCAuthenticatedMessage.fromJson(
                  state.openedSession!,
                  value,
                ).payload;
              },
            ),
          );

  @override
  Future<Result<GetEndpointResult, Failure>> getEndpoint() async =>
      Result.guard(
        () => _sendAuthenticated(
          requestEndpoint: 'get_endpoint',
          replyEndpoint: 'get_endpoint_result',
        ).then(GetEndpointResult.fromJson),
      );

  @override
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          requestEndpoint: 'send_transaction',
          replyEndpoint: 'send_transaction_result',
          payload: data,
        ).then(SendTransactionResult.fromJson),
      );

  @override
  Future<Result<GetAccountsResult, Failure>> getAccounts() async =>
      Result.guard(
        () async => _sendAuthenticated(
          requestEndpoint: 'get_accounts',
          replyEndpoint: 'get_accounts_result',
        ).then(GetAccountsResult.fromJson),
      );

  @override
  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount() async =>
      Result.guard(
        () async => _sendAuthenticated(
          requestEndpoint: 'get_current_account',
          replyEndpoint: 'get_current_account_result',
        ).then(GetCurrentAccountResult.fromJson),
      );

  @override
  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    String accountName,
  ) async =>
      Result.failure(Failure.unsupportedMethod());

  @override
  Future<void> unsubscribeAccount(String subscriptionId) async {}

  @override
  Future<Result<Subscription<Account>, Failure>>
      subscribeCurrentAccount() async =>
          Result.failure(Failure.unsupportedMethod());

  @override
  Future<void> unsubscribeCurrentAccount(String subscriptionId) async {}

  @override
  Future<Result<SendTransactionResult, Failure>> addService(
    Map<String, dynamic> data,
  ) async =>
      Result.guard(
        () => _sendAuthenticated(
          requestEndpoint: 'add_service',
          replyEndpoint: 'add_service_result',
          payload: data,
        ).then(SendTransactionResult.fromJson),
      );

  @override
  Future<Result<GetServicesFromKeychainResult, Failure>>
      getServicesFromKeychain() async => Result.guard(
            () => _sendAuthenticated(
              requestEndpoint: 'get_services_from_keychain',
              replyEndpoint: 'get_services_from_keychain_result',
            ).then(GetServicesFromKeychainResult.fromJson),
          );

  @override
  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          requestEndpoint: 'keychain_derive_keypair',
          replyEndpoint: 'keychain_derive_keypair_result',
          payload: data,
        ).then(KeychainDeriveKeypairResult.fromJson),
      );

  @override
  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          requestEndpoint: 'keychain_derive_address',
          replyEndpoint: 'keychain_derive_address_result',
          payload: data,
        ).then(KeychainDeriveAddressResult.fromJson),
      );

  @override
  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _sendAuthenticated(
          requestEndpoint: 'sign_transactions',
          replyEndpoint: 'sign_transactions_result',
          payload: data,
        ).then(SignTransactionsResult.fromJson),
      );
}

extension DeeplinkFutureRpcResponseFailure on Future<DeeplinkRpcResponse> {
  Future<T> mapValueOrThrow<T>(
    FutureOr<T> Function(dynamic value) map,
  ) async =>
      (await this).map(
        failure: (failure) => throw Failure.fromDeeplinkRpcFailure(failure),
        success: (success) => map(success),
      );
}
