/// SPDX-License-Identifier: AGPL-3.0-or-later
part of 'libdart_dapp_base.dart';

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
  Future<void> connect() async {
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
}
