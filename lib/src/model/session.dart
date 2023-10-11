import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session.waitingForValidation({
    required String sessionId,
    required Uint8List aesKey,
  }) = _SessionWaitingValidation;

  const factory Session.validated({
    required String sessionId,
    required Uint8List aesKey,
  }) = _SessionWaitingValidated;

  const Session._();
}
