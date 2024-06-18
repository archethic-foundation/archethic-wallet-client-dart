import 'dart:async';
import 'dart:developer';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:stream_channel/stream_channel.dart';

class AWCJsonRPCClient implements ArchethicDAppClient {
  AWCJsonRPCClient({
    required this.channelBuilder,
    required this.origin,
    required this.disposeChannel,
  });

  @override
  final RequestOrigin origin;
  final FutureOr<StreamChannel<String>> Function() channelBuilder;
  final FutureOr<void> Function(StreamChannel<String> channel) disposeChannel;

  Peer? _client;
  StreamChannel<String>? _channel;
  final _connectionStateController =
      StreamController<ArchethicDappConnectionState>.broadcast()
        ..add(const ArchethicDappConnectionState.disconnected());

  static const logName = 'AWCJsonRPCClients';

  final _subscriptionValues = StreamController<SubscriptionUpdate>.broadcast();

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
        'Connection already opened. Connection abort.',
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

    _channel = await _connect();

    log(
      'Connection opened',
      name: logName,
    );
    _connectionStateController.add(
      const ArchethicDappConnectionState.connected(),
    );

    final client = Peer(_channel!.cast<String>());
    client.registerMethod(
      'addSubscriptionNotification',
      (params) {
        log('Received value');
        _subscriptionValues.add(
          SubscriptionUpdate.fromJson(params.value),
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

  Future<StreamChannel<String>> _connect() async {
    try {
      return await channelBuilder();
    } catch (error) {
      log(
        'Connection failed : $error',
      );
      _connectionStateController.add(
        const ArchethicDappConnectionState.disconnected(),
      );
      throw Failure.connectivity;
    }
  }

  @override
  Future<void> close() async {
    await _client?.close();
    _client = null;
    await disposeChannel(_channel!);
    _channel = null;
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
      updates: _subscriptionValues.stream
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
          throw Failure.connectivity;
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
        throw Failure.other;
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
  Future<Result<RefreshCurrentAccountResponse, Failure>>
      refreshCurrentAccount() => Result.guard(
            () => _send(method: 'refreshCurrentAccount').then(
              (result) => RefreshCurrentAccountResponse.fromJson(result),
            ),
          );

  @override
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    SendTransactionRequest data,
  ) =>
      Result.guard(
        () => _send(
          method: 'sendTransaction',
          params: data.toJson(),
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
  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount() =>
      Result.guard(
        () => _send(method: 'getCurrentAccount').then(
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
  Future<void> unsubscribeAccount(String subscriptionId) async {
    await _send(
      method: 'unsubscribeAccount',
      params: {
        'subscriptionId': subscriptionId,
      },
    );
  }

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
  Future<void> unsubscribeCurrentAccount(String subscriptionId) async {
    await _send(
      method: 'unsubscribeCurrentAccount',
      params: {
        'subscriptionId': subscriptionId,
      },
    );
  }

  @override
  Future<Result<SendTransactionResult, Failure>> addService(
    AddServiceRequest data,
  ) =>
      Result.guard(
        () => _send(
          method: 'addService',
          params: data.toJson(),
        ).then(
          (result) => SendTransactionResult.fromJson(result),
        ),
      );

  @override
  Future<Result<GetServicesFromKeychainResult, Failure>>
      getServicesFromKeychain() => Result.guard(
            () => _send(method: 'getServicesFromKeychain').then(
              (result) => GetServicesFromKeychainResult.fromJson(result),
            ),
          );

  @override
  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    KeychainDeriveKeypairRequest data,
  ) =>
      Result.guard(
        () => _send(
          method: 'keychainDeriveKeypair',
          params: data.toJson(),
        ).then(
          (result) => KeychainDeriveKeypairResult.fromJson(result),
        ),
      );

  @override
  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    KeychainDeriveAddressRequest data,
  ) =>
      Result.guard(
        () => _send(
          method: 'keychainDeriveAddress',
          params: data.toJson(),
        ).then(
          (result) => KeychainDeriveAddressResult.fromJson(result),
        ),
      );

  @override
  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    SignTransactionRequest data,
  ) =>
      Result.guard(
        () => _send(
          method: 'signTransactions',
          params: data.toJson(),
        ).then(
          (result) => SignTransactionsResult.fromJson(result),
        ),
      );
}
