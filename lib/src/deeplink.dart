/// SPDX-License-Identifier: AGPL-3.0-or-later
part of 'archethic_wallet_client_base.dart';

class DeeplinkArchethicDappClient
    with ArchechicDAppClientSessionChallenge
    implements ArchethicDAppClient {
  DeeplinkArchethicDappClient({
    required this.origin,
    required this.replyBaseUrl,
  });

  final _deeplinkRpcClient = DeeplinkRpcClient();
  final _state = const ArchethicDappConnectionState.connected();

  final String replyBaseUrl;
  final String requestBaseUrl = 'aewallet://archethic.tech';

  static bool get isAvailable => Platform.isAndroid || Platform.isIOS;

  @override
  final RequestOrigin origin;

  bool handleRoute(String? path) => _deeplinkRpcClient.handleRoute(path);

  @override
  ArchethicDappConnectionState get state => _state;

  final _connectionStateController =
      StreamController<ArchethicDappConnectionState>.broadcast()
        ..add(const ArchethicDappConnectionState.connected());
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
  Future<Result<ArchethicDappSession, Failure>> openSession(
    OpenSessionRequest sessionRequest,
  ) async =>
      Result.guard(() async {
        // Handshake
        final keypair = aelib.deriveKeyPair(
          aelib.uint8ListToHex(
            Uint8List.fromList(
              List<int>.generate(
                32,
                (int i) => math.Random.secure().nextInt(256),
              ),
            ),
          ),
          0,
        );

        final encryptedAesKey = await _send(
          requestEndpoint: 'open_session_handshake',
          replyEndpoint: 'open_session_handshake_result',
          params: {
            'pubKey': aelib.uint8ListToHex(keypair.publicKey!),
          },
        ).mapValueOrThrow((value) => value['aesKey']);

        final sessionAesKey = aelib.ecDecrypt(
          encryptedAesKey,
          keypair.privateKey,
        );

        // Impersonation challenge.
        return _send(
          requestEndpoint: 'open_session_challenge',
          replyEndpoint: 'open_session_challenge_result',
          params: {
            'origin': sessionRequest.origin.toJson(),
            'challenge': aelib.uint8ListToHex(
              aelib.aesEncrypt(generateSessionChallenge(), sessionAesKey),
            ),
          },
        ).mapValueOrThrow(
          (value) {
            final sessionResponse = OpenSessionResponse.fromJson(value);
            final session = ArchethicDappSession(
              sessionId: sessionResponse.sessionId,
              aesKey: sessionAesKey,
            );

            _connectionStateController.add(
              ArchethicDappConnectionState.connected(session: session),
            );
            return session;
          },
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
    Map<String, dynamic> params = const {},
  }) async =>
      _deeplinkRpcClient.send(
        request: DeeplinkRpcRequest(
          requestUrl: '$requestBaseUrl/$requestEndpoint',
          replyUrl: '$replyBaseUrl/$replyEndpoint',
          params: Request(
            version: 1,
            origin: origin,
            payload: params,
          ).toJson(),
        ),
      );

  @override
  Future<Result<GetEndpointResult, Failure>> getEndpoint() async =>
      Result.guard(
        () => _send(
          requestEndpoint: 'get_endpoint',
          replyEndpoint: 'get_endpoint_result',
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
          params: data,
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
          params: data,
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
          params: data,
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
          params: data,
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
          params: data,
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
