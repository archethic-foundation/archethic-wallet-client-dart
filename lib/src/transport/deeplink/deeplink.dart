part of '../archethic_wallet_client.dart';

class DeeplinkArchethicDappClient extends ArchethicDAppClient {
  DeeplinkArchethicDappClient({
    required this.origin,
    required this.replyBaseUrl,
  }) : super._();

  final _deeplinkRpcClient = DeeplinkRpcClient();
  final _state = const ArchethicDappConnectionState.connected();

  final String replyBaseUrl;
  static const String requestBaseUrl = 'aewallet://archethic.tech';

  static Future<bool> get isAvailable async {
    final isMobileOS = defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;

    // Deeplink available on mobile platforms only
    if (!isMobileOS) {
      return false;
    }

    // When running in web browser, we cannot check
    // if aewallet is installed.
    // So, guessing it is available.
    if (kIsWeb) return true;

    // When running in a native app, we can check if
    // aewallet is installed
    return canLaunchUrl(Uri.parse(requestBaseUrl));
  }

  @override
  final RequestOrigin origin;

  bool handleRoute(String? path) => _deeplinkRpcClient.handleRoute(path);

  @override
  ArchethicDappConnectionState get state => _state;

  @override
  Stream<ArchethicDappConnectionState> get connectionStateStream async* {
    yield const ArchethicDappConnectionState.connected();
  }

  @override
  Future<void> connect() async {
    return;
  }

  @override
  Future<void> close() async {
    return;
  }

  /// [requiresUserInteraction] will determine the timeout duration :
  /// if no interaction is required, timeout will be short.
  Future<DeeplinkRpcResponse> _send({
    required String requestEndpoint,
    required String replyEndpoint,
    required bool requiresUserInteraction,
    Map<String, dynamic> params = const {},
  }) async =>
      requiresUserInteraction
          ? _deeplinkRpcClient.send(
              request: DeeplinkRpcRequest(
                requestUrl: '$requestBaseUrl/$requestEndpoint',
                replyUrl: '$replyBaseUrl/$replyEndpoint',
                params: Request(
                  version: 1,
                  origin: origin,
                  payload: params,
                ).toJson(),
              ),
            )
          : _deeplinkRpcClient.send(
              request: DeeplinkRpcRequest(
                requestUrl: '$requestBaseUrl/$requestEndpoint',
                replyUrl: '$replyBaseUrl/$replyEndpoint',
                params: Request(
                  version: 1,
                  origin: origin,
                  payload: params,
                ).toJson(),
              ),
              timeout: const Duration(seconds: 5),
            );

  @override
  Future<Result<GetEndpointResult, Failure>> getEndpoint() async => _send(
        requiresUserInteraction: false,
        requestEndpoint: 'get_endpoint',
        replyEndpoint: 'get_endpoint_result',
      ).then(
        (result) => result.map(
          failure: (failure) => Result.failure(
            Failure.fromDeeplinkRpcFailure(failure),
          ),
          success: (success) => Result.success(
            GetEndpointResult.fromJson(success),
          ),
        ),
      );

  @override
  Future<Result<RefreshCurrentAccountResponse, Failure>>
      refreshCurrentAccount() async => _send(
            requiresUserInteraction: false,
            requestEndpoint: 'refresh_current_account',
            replyEndpoint: 'refresh_current_account_result',
          ).then(
            (result) => result.map(
              failure: (failure) => Result.failure(
                Failure.fromDeeplinkRpcFailure(failure),
              ),
              success: (success) => Result.success(
                RefreshCurrentAccountResponse.fromJson(success),
              ),
            ),
          );

  @override
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    SendTransactionRequest data,
  ) =>
      _send(
        requiresUserInteraction: true,
        requestEndpoint: 'send_transaction',
        replyEndpoint: 'send_transaction_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(SendTransactionResult.fromJson(success)),
        ),
      );

  @override
  Future<Result<GetAccountsResult, Failure>> getAccounts() async => _send(
        requiresUserInteraction: false,
        requestEndpoint: 'get_accounts',
        replyEndpoint: 'get_accounts_result',
      ).then(
        (result) => result.map(
          failure: (failure) => Result.failure(
            Failure.fromDeeplinkRpcFailure(failure),
          ),
          success: (success) => Result.success(
            GetAccountsResult.fromJson(success),
          ),
        ),
      );

  @override
  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount() async =>
      _send(
        requiresUserInteraction: false,
        requestEndpoint: 'get_current_account',
        replyEndpoint: 'get_current_account_result',
      ).then(
        (result) => result.map(
          failure: (failure) => Result.failure(
            Failure.fromDeeplinkRpcFailure(failure),
          ),
          success: (success) => Result.success(
            GetCurrentAccountResult.fromJson(success),
          ),
        ),
      );

  @override
  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    String accountName,
  ) async =>
      const Result.failure(Failure.unsupportedMethod);

  @override
  Future<void> unsubscribeAccount(String subscriptionId) async {}

  @override
  Future<Result<Subscription<Account>, Failure>>
      subscribeCurrentAccount() async =>
          const Result.failure(Failure.unsupportedMethod);

  @override
  Future<void> unsubscribeCurrentAccount(String subscriptionId) async {}

  @override
  Future<Result<SendTransactionResult, Failure>> addService(
    AddServiceRequest data,
  ) =>
      _send(
        requiresUserInteraction: true,
        requestEndpoint: 'add_service',
        replyEndpoint: 'add_service_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(SendTransactionResult.fromJson(success)),
        ),
      );

  @override
  Future<Result<SendTransactionResult, Failure>> removeService(
    RemoveServiceRequest data,
  ) =>
      _send(
        requiresUserInteraction: true,
        requestEndpoint: 'remove_service',
        replyEndpoint: 'remove_service_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(SendTransactionResult.fromJson(success)),
        ),
      );

  @override
  Future<Result<GetServicesFromKeychainResult, Failure>>
      getServicesFromKeychain() async => _send(
            requiresUserInteraction: false,
            requestEndpoint: 'get_services_from_keychain',
            replyEndpoint: 'get_services_from_keychain_result',
          ).then(
            (result) => result.map(
              failure: (failure) => Result.failure(
                Failure.fromDeeplinkRpcFailure(failure),
              ),
              success: (success) => Result.success(
                GetServicesFromKeychainResult.fromJson(success),
              ),
            ),
          );

  @override
  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    KeychainDeriveKeypairRequest data,
  ) =>
      _send(
        requiresUserInteraction: false,
        requestEndpoint: 'keychain_derive_keypair',
        replyEndpoint: 'keychain_derive_keypair_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(KeychainDeriveKeypairResult.fromJson(success)),
        ),
      );

  @override
  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    KeychainDeriveAddressRequest data,
  ) =>
      _send(
        requiresUserInteraction: false,
        requestEndpoint: 'keychain_derive_address',
        replyEndpoint: 'keychain_derive_address_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(KeychainDeriveAddressResult.fromJson(success)),
        ),
      );

  @override
  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    SignTransactionRequest data,
  ) =>
      _send(
        requiresUserInteraction: true,
        requestEndpoint: 'sign_transactions',
        replyEndpoint: 'sign_transactions_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(SignTransactionsResult.fromJson(success)),
        ),
      );

  @override
  Future<Result<SignPayloadsResult, Failure>> signPayloads(
    SignPayloadRequest data,
  ) =>
      _send(
        requiresUserInteraction: true,
        requestEndpoint: 'sign_payloads',
        replyEndpoint: 'sign_payloads_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(SignPayloadsResult.fromJson(success)),
        ),
      );

  @override
  Future<Result<EncryptPayloadsResult, Failure>> encryptPayloads(
    EncryptPayloadRequest data,
  ) =>
      _send(
        requiresUserInteraction: false,
        requestEndpoint: 'encrypt_payloads',
        replyEndpoint: 'encrypt_payloads_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(EncryptPayloadsResult.fromJson(success)),
        ),
      );

  @override
  Future<Result<DecryptPayloadsResult, Failure>> decryptPayloads(
    DecryptPayloadRequest data,
  ) =>
      _send(
        requiresUserInteraction: true,
        requestEndpoint: 'decrypt_payloads',
        replyEndpoint: 'decrypt_payloads_result',
        params: data.toJson(),
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(DecryptPayloadsResult.fromJson(success)),
        ),
      );
}
