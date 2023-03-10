/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:archethic_wallet_client/src/core/failures.dart';
import 'package:archethic_wallet_client/src/core/request.dart';
import 'package:archethic_wallet_client/src/core/result.dart';
import 'package:archethic_wallet_client/src/core/subscription.dart';
import 'package:archethic_wallet_client/src/request/account_sub.dart';
import 'package:archethic_wallet_client/src/request/get_accounts.dart';
import 'package:archethic_wallet_client/src/request/get_endpoint.dart';
import 'package:archethic_wallet_client/src/request/get_services_from_keychain.dart';
import 'package:archethic_wallet_client/src/request/send_transaction.dart';
import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'archethic_wallet_client_base.freezed.dart';
part 'deeplink.dart';
part 'websocket.dart';

@freezed
class ArchethicDappConnectionState with _$ArchethicDappConnectionState {
  const ArchethicDappConnectionState._();

  const factory ArchethicDappConnectionState.disconnected() = _Disconnected;
  const factory ArchethicDappConnectionState.connected() = _Connected;
  const factory ArchethicDappConnectionState.connecting() = _Connecting;
}

abstract class ArchethicDAppClient {
  /// Creates a Deeplink or Websocket client according
  /// to current Platform capabilities.
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

  Stream<ArchethicDappConnectionState> get connectionStateStream;
  ArchethicDappConnectionState get state;
  RequestOrigin get origin;

  Future<void> connect();

  Future<void> close();

  Future<Result<GetEndpointResult, Failure>> getEndpoint();

  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    String accountName,
  );

  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  );

  Future<Result<GetAccountsResult, Failure>> getAccounts();

  Future<void> unsubscribeAccount(String subscriptionId);
  Future<Result<SendTransactionResult, Failure>> addService(
    Map<String, dynamic> data,
  );

  Future<Result<GetServicesFromKeychainResult, Failure>>
      getServicesFromKeychain();
}
