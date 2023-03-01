/// SPDX-License-Identifier: AGPL-3.0-or-later
part of 'libdart_dapp_base.dart';

class WebsocketArchethicDappClient implements ArchethicDAppClient {
  WebsocketArchethicDappClient({
    required this.origin,
  });

  @override
  final RequestOrigin origin;

  Client? _client;

  static const logName = 'WebsocketArchethicDappClient';

  static bool get isAvailable =>
      kIsWeb || Platform.isLinux || Platform.isMacOS || Platform.isWindows;

  @override
  ArchethicDappConnectionState get state {
    if (_client == null) {
      return const ArchethicDappConnectionState.disconnected();
    }
    if (_client!.isClosed) {
      return const ArchethicDappConnectionState.disconnected();
    }
    return const ArchethicDappConnectionState.connected();
  }

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
    final socket = WebSocketChannel.connect(Uri.parse('ws://localhost:12345'));
    _client = Client(socket.cast<String>());
    unawaited(_client!.listen());
  }

  Future<void> close() async {
    await _client?.close();
    _client = null;
  }

  Future<Map<String, dynamic>> _send({
    required String method,
    Map<String, dynamic> params = const {},
  }) async {
    if (_client == null || _client!.isClosed) {
      _client = null;
      await connect();
    }
    return _client!
        .sendRequest(
      method,
      Request(
        version: 1,
        origin: origin,
        payload: params,
      ).toJson(),
    )
        .then(
      (result) => result,
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
        () => _send(method: 'getEndpoint').then(
          (result) => GetEndpointResult.fromJson(result),
        ),
      );

  @override
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  ) =>
      Result.guard(
        () => _send(
          method: 'sendTransaction',
          params: data,
        ).then(
          (result) => SendTransactionResult.fromJson(result),
        ),
      );
}
