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

        final handshakeResult = await _send(
          requestEndpoint: 'open_session_handshake',
          replyEndpoint: 'open_session_handshake_result',
          request: RPCRequest.anonymous(
            payload: OpenSessionHandshakeRequest(
              pubKey: aelib.uint8ListToHex(keypair.publicKey!),
            ).toJson(),
          ),
        ).mapValueOrThrow(OpenSessionHandshakeResponse.fromJson);

        final sessionAesKey = aelib.ecDecrypt(
          handshakeResult.aesKey,
          keypair.privateKey,
        );

        _connectionStateController.add(
          ArchethicDappConnectionState.connected(
            session: Session.waitingForValidation(
              sessionId: handshakeResult.sessionId,
              aesKey: sessionAesKey,
            ),
          ),
        );

        // Impersonation challenge.
        return _send(
          requestEndpoint: 'open_session_challenge',
          replyEndpoint: 'open_session_challenge_result',
          request: RPCRequest.authenticated(
            payload: OpenSessionChallengeRequest(
              sessionId: handshakeResult.sessionId,
              origin: sessionRequest.origin,
              challenge: aesEncrypt(
                sessionRequest.challenge,
                sessionAesKey,
              ),
              maxDuration: sessionRequest.maxDuration.inSeconds,
            ).toJson(),
          ),
        ).mapValueOrThrow(
          (value) => Session.validated(
            sessionId: handshakeResult.sessionId,
            aesKey: sessionAesKey,
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

  Future<DeeplinkRpcResponse> _send({
    required String requestEndpoint,
    required String replyEndpoint,
    required RPCRequest request,
  }) async =>
      _deeplinkRpcClient.send(
        request: DeeplinkRpcRequest(
          requestUrl: '$requestBaseUrl/$requestEndpoint',
          replyUrl: '$replyBaseUrl/$replyEndpoint',
          params: request.map(
            anonymous: (anonymous) => anonymous.toJson(),
            authenticated: (authenticated) {
              final session = state.openedSession;
              if (session == null) {
                throw Failure.invalidSession();
              }
              return authenticated.toJson(session);
            },
          ),
        ),
      );

  @override
  Future<Result<GetEndpointResult, Failure>> getEndpoint() async =>
      Result.guard(
        () => _send(
          requestEndpoint: 'get_endpoint',
          replyEndpoint: 'get_endpoint_result',
          request: const RPCRequest.authenticated(),
        ).mapValueOrThrow(
          GetEndpointResult.fromJson,
        ),
      );

  @override
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _send(
          requestEndpoint: 'send_transaction',
          replyEndpoint: 'send_transaction_result',
          request: RPCRequest.authenticated(payload: data),
        ).mapValueOrThrow(
          SendTransactionResult.fromJson,
        ),
      );

  @override
  Future<Result<GetAccountsResult, Failure>> getAccounts() async =>
      Result.guard(
        () async => _send(
          requestEndpoint: 'get_accounts',
          replyEndpoint: 'get_accounts_result',
          request: const RPCRequest.authenticated(),
        ).mapValueOrThrow(
          GetAccountsResult.fromJson,
        ),
      );

  @override
  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount() async =>
      Result.guard(
        () async => _send(
          requestEndpoint: 'get_current_account',
          replyEndpoint: 'get_current_account_result',
          request: const RPCRequest.authenticated(),
        ).mapValueOrThrow(
          GetCurrentAccountResult.fromJson,
        ),
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
        () => _send(
          requestEndpoint: 'add_service',
          replyEndpoint: 'add_service_result',
          request: RPCRequest.authenticated(payload: data),
        ).mapValueOrThrow(
          SendTransactionResult.fromJson,
        ),
      );

  @override
  Future<Result<GetServicesFromKeychainResult, Failure>>
      getServicesFromKeychain() async => Result.guard(
            () => _send(
              requestEndpoint: 'get_services_from_keychain',
              replyEndpoint: 'get_services_from_keychain_result',
              request: const RPCRequest.authenticated(),
            ).mapValueOrThrow(
              GetServicesFromKeychainResult.fromJson,
            ),
          );

  @override
  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _send(
          requestEndpoint: 'keychain_derive_keypair',
          replyEndpoint: 'keychain_derive_keypair_result',
          request: RPCRequest.authenticated(payload: data),
        ).mapValueOrThrow(
          KeychainDeriveKeypairResult.fromJson,
        ),
      );

  @override
  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _send(
          requestEndpoint: 'keychain_derive_address',
          replyEndpoint: 'keychain_derive_address_result',
          request: RPCRequest.authenticated(payload: data),
        ).mapValueOrThrow(
          KeychainDeriveAddressResult.fromJson,
        ),
      );

  @override
  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _send(
          requestEndpoint: 'sign_transactions',
          replyEndpoint: 'sign_transactions_result',
          request: RPCRequest.authenticated(payload: data),
        ).mapValueOrThrow(
          SignTransactionsResult.fromJson,
        ),
      );
}

extension DeeplinkFutureRpcResponseFailure on Future<DeeplinkRpcResponse> {
  Future<T> mapValueOrThrow<T>(
    T Function(Map<String, dynamic> value) map,
  ) async =>
      (await this).map(
        failure: (failure) => throw Failure.fromDeeplinkRpcFailure(failure),
        success: (success) => map(success),
      );
}
