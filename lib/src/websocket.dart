/// SPDX-License-Identifier: AGPL-3.0-or-later
part of 'archethic_wallet_client_base.dart';

class WebsocketArchethicDappClient implements ArchethicDAppClient {
  WebsocketArchethicDappClient({
    required this.origin,
  });

  @override
  final RequestOrigin origin;

  Peer? _client;
  final _connectionStateController =
      StreamController<ArchethicDappConnectionState>.broadcast()
        ..add(const ArchethicDappConnectionState.disconnected());

  static const logName = 'WebsocketArchethicDappClient';

  static bool get isAvailable =>
      kIsWeb || Platform.isLinux || Platform.isMacOS || Platform.isWindows;

  final _accountSubscriptionValues =
      StreamController<RPCSubscriptionUpdateDTO>.broadcast();

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
    final socket = WebSocketChannel.connect(Uri.parse('ws://127.0.0.1:12345'));
    log(
      'Connection opened',
      name: logName,
    );
    _connectionStateController.add(
      const ArchethicDappConnectionState.connected(),
    );
    final client = Peer(socket.cast<String>());
    client.registerMethod(
      'subscribeAccountValue',
      (params) {
        log('Valeur recue !');
        _accountSubscriptionValues.add(
          RPCSubscriptionUpdateDTO.fromJson(params.value),
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
    final subscriptionData = await _send(
      method: method,
      params: params,
    );

    final subscriptionId = subscriptionData['subscriptionId'];
    return Subscription(
      id: subscriptionId,
      updates: _accountSubscriptionValues.stream
          .where((event) => event.subscriptionId == subscriptionId)
          .map((event) => event.data),
    );
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

  @override
  Future<Result<GetAccountsResult, Failure>> getAccounts() => Result.guard(
        () => _send(method: 'getAccounts').then(
          (result) => GetAccountsResult.fromJson(result),
        ),
      );

  @override
  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    String accountName,
  ) async =>
      Result.guard(
        () async {
          final subscriptionDTO = await _subscribe(
            method: 'subscribeAccount',
            params: {
              'name': accountName,
            },
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
  Future<void> unsubscribeAccount(String subscriptionId) async {
    await _send(
      method: 'unsubscribeAccount',
      params: {
        'subscriptionId': subscriptionId,
      },
    );
  }
}
