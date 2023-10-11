/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:archethic_lib_dart/archethic_lib_dart.dart' as aelib;
import 'package:archethic_wallet_client/src/core/failures.dart';
import 'package:archethic_wallet_client/src/core/request.dart';
import 'package:archethic_wallet_client/src/core/result.dart';
import 'package:archethic_wallet_client/src/core/stream.dart';
import 'package:archethic_wallet_client/src/core/subscription.dart';
import 'package:archethic_wallet_client/src/request/account_sub.dart';
import 'package:archethic_wallet_client/src/request/create_session.dart';
import 'package:archethic_wallet_client/src/request/get_accounts.dart';
import 'package:archethic_wallet_client/src/request/get_current_account.dart';
import 'package:archethic_wallet_client/src/request/get_endpoint.dart';
import 'package:archethic_wallet_client/src/request/get_services_from_keychain.dart';
import 'package:archethic_wallet_client/src/request/keychain_derive_address.dart';
import 'package:archethic_wallet_client/src/request/keychain_derive_keypair.dart';
import 'package:archethic_wallet_client/src/request/send_transaction.dart';
import 'package:archethic_wallet_client/src/request/sign_transactions.dart';
import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:web_socket_channel_connect/web_socket_channel_connect.dart';

part 'archethic_wallet_client_base.freezed.dart';
part 'deeplink.dart';
part 'websocket.dart';

@freezed
class ArchethicDappSession with _$ArchethicDappSession {
  const factory ArchethicDappSession.waitingForValidation({
    required String sessionId,
    required Uint8List aesKey,
  }) = _ArchethicDappSessionWaitingValidation;

  const factory ArchethicDappSession.validated({
    required String sessionId,
    required Uint8List aesKey,
  }) = _ArchethicDappSessionWaitingValidated;

  const ArchethicDappSession._();
}

@freezed
class ArchethicDappConnectionState with _$ArchethicDappConnectionState {
  const ArchethicDappConnectionState._();

  const factory ArchethicDappConnectionState.disconnected() = _Disconnected;
  const factory ArchethicDappConnectionState.connected({
    ArchethicDappSession? session,
    Failure? sessionFailure,
  }) = _Connected;
  const factory ArchethicDappConnectionState.connecting() = _Connecting;

  bool get isConnected => this is _Connected;
  bool get isNotConnected => !isConnected;
  bool get isSessionOpened =>
      this is _Connected &&
      (this as _Connected).session is _ArchethicDappSessionWaitingValidated;
  bool get isNotSessionOpened => !isSessionOpened;
  ArchethicDappSession? get openedSession => mapOrNull(
        connected: (connected) => connected.session?.mapOrNull(
          validated: (validated) => validated,
        ),
      );
  bool get didSessionOpeningFail => sessionOpeningFailure != null;
  Failure? get sessionOpeningFailure =>
      this is _Connected ? (this as _Connected).sessionFailure : null;
}

abstract class ArchethicDAppClient {
  /// Creates a Deeplink or Websocket client according
  /// to current Platform capabilities.
  factory ArchethicDAppClient.auto({
    required String replyBaseUrl,
  }) {
    if (WebsocketArchethicDappClient.isAvailable) {
      return ArchethicDAppClient.websocket();
    }

    if (DeeplinkArchethicDappClient.isAvailable) {
      return ArchethicDAppClient.deeplink(
        replyBaseUrl: replyBaseUrl,
      );
    }

    throw Exception(
      'No ArchethicDAppClient implementation for your current operating system ${Platform.operatingSystem}',
    );
  }

  factory ArchethicDAppClient.deeplink({
    required String replyBaseUrl,
  }) = DeeplinkArchethicDappClient;

  factory ArchethicDAppClient.websocket() = WebsocketArchethicDappClient;

  Stream<ArchethicDappConnectionState> get connectionStateStream;
  ArchethicDappConnectionState get state;

  Future<void> connect();

  Future<void> close();

  Future<Result<ArchethicDappSession, Failure>> openSession(
    OpenSessionRequest sessionRequest,
  );

  Future<Result<GetEndpointResult, Failure>> getEndpoint();

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

  String generateSessionChallenge();
}

mixin ArchechicDAppClientSessionChallenge {
  String generateSessionChallenge() {
    const _sessionChallengeElements = [
      '👍',
      '✨',
      '🐛',
      '❤️',
      '⚠️',
      '🚨',
      '⚡️',
      '📱',
      '🗝️',
      '🎨',
      '🔗',
      '🎉',
      '🔨',
      '⚽️',
      '🎬',
      '🎲',
      '⏰',
    ];

    final elements = [..._sessionChallengeElements];
    elements.shuffle();
    return elements.take(5).join(' ');
  }

  aelib.KeyPair generateKeyPair() => aelib.deriveKeyPair(
        aelib.uint8ListToHex(
          Uint8List.fromList(
            List<int>.generate(
              32,
              (int i) => math.Random.secure().nextInt(256),
            ),
          ),
        ),
        0,
      );

  String aesEncrypt(String data, Uint8List key) => aelib.uint8ListToHex(
        aelib.aesEncrypt(
          aelib.uint8ListToHex(
            Uint8List.fromList(
              utf8.encode(data),
            ),
          ),
          key,
        ),
      );
}
