import 'dart:async';
import 'dart:convert';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:archethic_wallet_client/src/core/task.dart';
import 'package:archethic_wallet_client/src/transport/message_channel/message_channel_desktop.dart'
    if (dart.library.js) 'package:archethic_wallet_client/src/transport/message_channel/message_channel.dart';
import 'package:archethic_wallet_client/src/transport/webbrowser_extension/webbrowser_extension_desktop.dart'
    if (dart.library.js) 'package:archethic_wallet_client/src/transport/webbrowser_extension/webbrowser_extension.dart';
import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:logging/logging.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'archethic_wallet_client.freezed.dart';
part 'common/awc_json_rpc_client.dart';
part 'deeplink/deeplink.dart';
part 'websocket/websocket.dart';

@freezed
class ArchethicDappConnectionState with _$ArchethicDappConnectionState {
  const ArchethicDappConnectionState._();

  const factory ArchethicDappConnectionState.disconnecting() = _Disconnecting;
  const factory ArchethicDappConnectionState.disconnected() = _Disconnected;
  const factory ArchethicDappConnectionState.connected() = _Connected;
  const factory ArchethicDappConnectionState.connecting() = _Connecting;
}

enum ArchethicDAppTransportMethods {
  webBrowserExtension,
  websocket,
  deeplink,
  messageChannel,
}

class ArchethicDAppTransportMethodsReport {
  ArchethicDAppTransportMethodsReport({
    required this.webBrowserExtension,
    required this.websocket,
    required this.deeplink,
    required this.messageChannel,
  });

  static Future<ArchethicDAppTransportMethodsReport> check(
    List<ArchethicDAppTransportMethods> authorizedMethods,
  ) async =>
      ArchethicDAppTransportMethodsReport(
        webBrowserExtension: authorizedMethods
                .contains(ArchethicDAppTransportMethods.webBrowserExtension) &&
            WebBrowserExtensionDappClient.isAvailable,
        websocket: authorizedMethods
                .contains(ArchethicDAppTransportMethods.websocket) &&
            await WebsocketArchethicDappClient.isAvailable,
        deeplink: authorizedMethods
                .contains(ArchethicDAppTransportMethods.deeplink) &&
            await DeeplinkArchethicDappClient.isAvailable,
        messageChannel: authorizedMethods
                .contains(ArchethicDAppTransportMethods.messageChannel) &&
            MessageChannelArchethicDappClient.isAvailable,
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

  ArchethicDAppClient._();

  /// Creates a Deeplink or Websocket client according
  /// to current Platform capabilities.
  /// You can whiltelist authorized transport methods using [authorizedMethods] parameter.
  static Future<ArchethicDAppClient> auto({
    required RequestOrigin origin,
    required String replyBaseUrl,
    List<ArchethicDAppTransportMethods> authorizedMethods =
        ArchethicDAppTransportMethods.values,
  }) async {
    final transportMethodsReport =
        await ArchethicDAppTransportMethodsReport.check(authorizedMethods);

    _logger.info('''
[Transport methods check]
$transportMethodsReport
      ''');

    if (transportMethodsReport.webBrowserExtension) {
      _logger.info('Using Web browser extension');
      return ArchethicDAppClient.webBrowserExtension(origin: origin);
    }

    if (transportMethodsReport.messageChannel) {
      _logger.info('Using Message Channel');
      return ArchethicDAppClient.messageChannel(origin: origin);
    }

    if (transportMethodsReport.websocket) {
      _logger.info('Using WebSocket');
      return ArchethicDAppClient.websocket(origin: origin);
    }

    if (transportMethodsReport.deeplink) {
      _logger.info('Using Deeplink');
      return ArchethicDAppClient.deeplink(
        origin: origin,
        replyBaseUrl: replyBaseUrl,
      );
    }

    throw Exception(
      'Found no way to connect to archethic wallet.',
    );
  }

  static final _logger = Logger('AWC-ArchethicWalletClient');
  Stream<ArchethicDappConnectionState> get connectionStateStream;
  ArchethicDappConnectionState get state;
  RequestOrigin get origin;

  Future<void> connect();

  Future<void> close();

  Future<Result<GetEndpointResult, Failure>> getEndpoint();

  Future<Result<RefreshCurrentAccountResponse, Failure>>
      refreshCurrentAccount();

  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    String accountName,
  );

  Future<Result<Subscription<Account>, Failure>> subscribeCurrentAccount();

  Future<void> unsubscribeCurrentAccount(String subscriptionId);

  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    SendTransactionRequest data,
  );

  Future<Result<GetAccountsResult, Failure>> getAccounts();

  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount();

  Future<void> unsubscribeAccount(String subscriptionId);

  Future<Result<SendTransactionResult, Failure>> addService(
    AddServiceRequest data,
  );

  Future<Result<SendTransactionResult, Failure>> removeService(
    RemoveServiceRequest data,
  );

  Future<Result<GetServicesFromKeychainResult, Failure>>
      getServicesFromKeychain();

  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    KeychainDeriveKeypairRequest data,
  );

  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    KeychainDeriveAddressRequest data,
  );

  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    SignTransactionRequest data,
  );

  Future<Result<SignPayloadsResult, Failure>> signPayloads(
    SignPayloadRequest data,
  );

  Future<Result<EncryptPayloadsResult, Failure>> encryptPayloads(
    EncryptPayloadRequest data,
  );

  Future<Result<DecryptPayloadsResult, Failure>> decryptPayloads(
    DecryptPayloadRequest data,
  );
}
