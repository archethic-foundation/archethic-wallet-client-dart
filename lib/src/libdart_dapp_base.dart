import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:libdart_dapp/src/core/failures.dart';
import 'package:libdart_dapp/src/core/request.dart';
import 'package:libdart_dapp/src/core/result.dart';
import 'package:libdart_dapp/src/request/get_endpoint.dart';
import 'package:libdart_dapp/src/request/send_transaction.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'deeplink.dart';
part 'libdart_dapp_base.freezed.dart';
part 'websocket.dart';

@freezed
class ArchethicDappConnectionState with _$ArchethicDappConnectionState {
  const factory ArchethicDappConnectionState() = _ArchethicDappConnectionState;

  const ArchethicDappConnectionState._();

  const factory ArchethicDappConnectionState.disconnected() = _Disconnected;
  const factory ArchethicDappConnectionState.connected() = _Connected;
  const factory ArchethicDappConnectionState.connecting() = _Connecting;
}

abstract class ArchethicDAppClient {
  factory ArchethicDAppClient.auto({
    required RequestOrigin origin,
    required String replyBaseUrl,
  }) {
    if (WebsocketArchethicDappClient.isAvailable) {
      return ArchethicDAppClient.websocket(origin: origin);
    }

    if (DeeplinkArchethicDappClient.isAvailable) {
      return ArchethicDAppClient.deeplink(
        origin: origin,
        replyBaseUrl: replyBaseUrl,
      );
    }

    throw Exception(
      'No ArchethicDAppClient implementation for your current operating system ${Platform.operatingSystem}',
    );
  }

  factory ArchethicDAppClient.deeplink({
    required RequestOrigin origin,
    required String replyBaseUrl,
  }) = DeeplinkArchethicDappClient;

  factory ArchethicDAppClient.websocket({
    required RequestOrigin origin,
  }) = WebsocketArchethicDappClient;

  ArchethicDappConnectionState get state;
  RequestOrigin get origin;

  Future<void> connect();

  Future<Result<GetEndpointResult, Failure>> getEndpoint();

  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  );
}
