/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'dart:async';
import 'dart:io';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:archethic_wallet_client/src/request/get_accounts.dart';
import 'package:archethic_wallet_client/src/request/get_current_account.dart';
import 'package:archethic_wallet_client/src/request/get_services_from_keychain.dart';
import 'package:archethic_wallet_client/src/request/keychain_derive_address.dart';
import 'package:archethic_wallet_client/src/request/keychain_derive_keypair.dart';
import 'package:archethic_wallet_client/src/request/sign_transactions.dart';
import 'package:archethic_wallet_client/src/transport/common/awc_json_rpc_client.dart';
import 'package:archethic_wallet_client/src/transport/message_channel/message_channel_desktop.dart'
    if (dart.library.js) 'package:archethic_wallet_client/src/transport/message_channel/message_channel.dart';
import 'package:archethic_wallet_client/src/transport/webbrowser_extension/webbrowser_extension_desktop.dart'
    if (dart.library.js) 'package:archethic_wallet_client/src/transport/webbrowser_extension/webbrowser_extension.dart';
import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'archethic_wallet_client.freezed.dart';
part 'deeplink/deeplink.dart';
part 'websocket/websocket.dart';

@freezed
class ArchethicDappConnectionState with _$ArchethicDappConnectionState {
  const ArchethicDappConnectionState._();

  const factory ArchethicDappConnectionState.disconnected() = _Disconnected;
  const factory ArchethicDappConnectionState.connected() = _Connected;
  const factory ArchethicDappConnectionState.connecting() = _Connecting;
}

class ArchethicDAppTransportMethodsReport {
  ArchethicDAppTransportMethodsReport({
    required this.webBrowserExtension,
    required this.websocket,
    required this.deeplink,
    required this.messageChannel,
  });

  factory ArchethicDAppTransportMethodsReport.check() =>
      ArchethicDAppTransportMethodsReport(
        webBrowserExtension: WebBrowserExtensionDappClient.isAvailable,
        websocket: WebsocketArchethicDappClient.isAvailable,
        deeplink: DeeplinkArchethicDappClient.isAvailable,
        messageChannel: MessageChannelArchethicDappClient.isAvailable,
      );

  final bool webBrowserExtension;
  final bool websocket;
  final bool deeplink;
  final bool messageChannel;

  @override
  String toString() {
    return '''
\t${_availabilityIcon(websocket)} Websocket
\t${_availabilityIcon(deeplink)} Deeplink
\t${_availabilityIcon(messageChannel)} Message Channel
\t${_availabilityIcon(webBrowserExtension)} Web browser extension
''';
  }

  String _availabilityIcon(bool isAvailable) => isAvailable ? '✅' : '⛔️';
}

abstract class ArchethicDAppClient {
  /// Creates a Deeplink or Websocket client according
  /// to current Platform capabilities.
  factory ArchethicDAppClient.auto({
    required RequestOrigin origin,
    required String replyBaseUrl,
  }) {
    final transportMethodsReport = ArchethicDAppTransportMethodsReport.check();

    print('''
[Transport methods check]
$transportMethodsReport
      ''');

    if (transportMethodsReport.webBrowserExtension) {
      print('Using Web browser extension');
      return ArchethicDAppClient.webBrowserExtension(origin: origin);
    }

    if (transportMethodsReport.messageChannel) {
      print('Using Message Channel');
      return ArchethicDAppClient.messageChannel(origin: origin);
    }

    if (transportMethodsReport.websocket) {
      print('Using WebSocket');
      return ArchethicDAppClient.websocket(origin: origin);
    }

    if (transportMethodsReport.deeplink) {
      print('Using Deeplink');
      return ArchethicDAppClient.deeplink(
        origin: origin,
        replyBaseUrl: replyBaseUrl,
      );
    }

    throw Exception(
      'No ArchethicDAppClient implementation for your current operating system ${Platform.operatingSystem}',
    );
  }

  factory ArchethicDAppClient.webBrowserExtension({
    required RequestOrigin origin,
  }) = WebBrowserExtensionDappClient;

  factory ArchethicDAppClient.messageChannel({
    required RequestOrigin origin,
  }) = MessageChannelArchethicDappClient;

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

  Future<Result<RefreshCurrentAccountResult, Failure>> refreshCurrentAccount();

  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    String accountName,
  );

  Future<Result<Subscription<Account>, Failure>> subscribeCurrentAccount();

  Future<void> unsubscribeCurrentAccount(String subscriptionId);

  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  );

  Future<Result<GetAccountsResult, Failure>> getAccounts();

  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount();

  Future<void> unsubscribeAccount(String subscriptionId);

  Future<Result<SendTransactionResult, Failure>> addService(
    Map<String, dynamic> data,
  );

  Future<Result<GetServicesFromKeychainResult, Failure>>
      getServicesFromKeychain();

  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    Map<String, dynamic> data,
  );

  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    Map<String, dynamic> data,
  );

  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    Map<String, dynamic> data,
  );
}
