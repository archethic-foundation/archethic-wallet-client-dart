/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'dart:convert';
import 'dart:typed_data';

import 'package:archethic_lib_dart/archethic_lib_dart.dart' as aelib;
import 'package:archethic_wallet_client/src/model/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class RPCMessage {
  const RPCMessage({
    this.payload = const {},
  });

  const factory RPCMessage.anonymous({Map<String, dynamic> payload}) =
      RPCAnonymousMessage;
  const factory RPCMessage.authenticated({Map<String, dynamic> payload}) =
      RPCAuthenticatedMessage;

  T map<T>({
    required T Function(RPCAnonymousMessage) anonymous,
    required T Function(RPCAuthenticatedMessage) authenticated,
  });

  final Map<String, dynamic> payload;

  static const protocolVersion = 2;
}

@immutable
class RPCAnonymousMessage extends RPCMessage {
  const RPCAnonymousMessage({
    super.payload,
  });

  factory RPCAnonymousMessage.fromJson(Map<String, dynamic> data) =>
      RPCAnonymousMessage(payload: data);

  @override
  T map<T>({
    required T Function(RPCAnonymousMessage) anonymous,
    required T Function(RPCAuthenticatedMessage) authenticated,
  }) =>
      anonymous(this);

  Map<String, dynamic> toJson() {
    return {
      'version': RPCMessage.protocolVersion,
      'payload': payload,
    };
  }
}

@immutable
class RPCAuthenticatedMessage extends RPCMessage {
  const RPCAuthenticatedMessage({
    super.payload,
  });

  factory RPCAuthenticatedMessage.fromJson(
    Session session,
    String data,
  ) =>
      RPCAuthenticatedMessage(
        payload: jsonDecode(
          utf8.decode(
            aelib.hexToUint8List(
              aelib.uint8ListToHex(
                aelib.aesDecrypt(data, session.aesKey),
              ),
            ),
          ),
        ),
      );

  @override
  T map<T>({
    required T Function(RPCAnonymousMessage) anonymous,
    required T Function(RPCAuthenticatedMessage) authenticated,
  }) =>
      authenticated(this);

  Map<String, dynamic> toJson(Session session) {
    return {
      'sessionId': session.sessionId,
      'version': RPCMessage.protocolVersion,
      'payload': aelib.uint8ListToHex(
        aelib.aesEncrypt(
          aelib.uint8ListToHex(
            Uint8List.fromList(
              utf8.encode(jsonEncode(payload)),
            ),
          ),
          session.aesKey,
        ),
      ),
    };
  }
}
