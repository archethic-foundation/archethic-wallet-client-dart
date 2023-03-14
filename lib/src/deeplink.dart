/// SPDX-License-Identifier: AGPL-3.0-or-later
part of 'archethic_wallet_client_base.dart';

class DeeplinkArchethicDappClient implements ArchethicDAppClient {
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
  Future<Result<GetEndpointResult, Failure>> getEndpoint() async => _send(
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
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  ) =>
      _send(
        requestEndpoint: 'send_transaction',
        replyEndpoint: 'send_transaction_result',
        params: data,
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
  ) =>
      _send(
        requestEndpoint: 'add_service',
        replyEndpoint: 'add_service_result',
        params: data,
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
    Map<String, dynamic> data,
  ) =>
      _send(
        requestEndpoint: 'keychain_derive_keypair',
        replyEndpoint: 'keychain_derive_keypair_result',
        params: data,
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
    Map<String, dynamic> data,
  ) =>
      _send(
        requestEndpoint: 'keychain_derive_address',
        replyEndpoint: 'keychain_derive_address_result',
        params: data,
      ).then(
        (result) => result.map(
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(KeychainDeriveAddressResult.fromJson(success)),
        ),
      );
}
