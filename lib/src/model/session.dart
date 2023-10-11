import 'dart:typed_data';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session.waitingForValidation({
    required DateTime createdAt,
    required String sessionId,
    required Uint8List aesKey,
  }) = SessionWaitingForValidation;

  const factory Session.validated({
    required DateTime createdAt,
    required String sessionId,
    required Uint8List aesKey,
    required RPCSessionOrigin origin,
  }) = ValidatedSession;

  const Session._();
}
