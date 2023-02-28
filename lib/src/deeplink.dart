part of 'libdart_dapp_base.dart';

class DeeplinkArchethicDappClient implements ArchethicDAppClient {
  final _deeplinkRpcClient = DeeplinkRpcClient();
  final _state = ArchethicDappConnectionState.connected();

  final String replyBaseUrl;
  final String requestBaseUrl = 'aewallet://wallet.archethic.net';

  @override
  final RequestOrigin origin;

  bool handleRoute(String? path) => _deeplinkRpcClient.handleRoute(path);

  DeeplinkArchethicDappClient({
    required this.origin,
    required this.replyBaseUrl,
  });

  @override
  ArchethicDappConnectionState get state => _state;

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
          failure: (failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
          success: (success) =>
              Result.success(GetEndpointResult.fromJson(success)),
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
}
