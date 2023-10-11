/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:archethic_lib_dart/archethic_lib_dart.dart' as aelib;
import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class RPCMessage {
  const RPCMessage({
    this.version = protocolVersion,
    this.payload = const {},
  });

  const factory RPCMessage.anonymous({Map<String, dynamic> payload}) =
      RPCAnonymousMessage;
  const factory RPCMessage.authenticated({
    required Session session,
    Map<String, dynamic> payload,
  }) = RPCAuthenticatedMessage;

  FutureOr<T> map<T>({
    required FutureOr<T> Function(RPCAnonymousMessage) anonymous,
    required FutureOr<T> Function(RPCAuthenticatedMessage) authenticated,
  });

  Map<String, dynamic> toJson();

  final int version;
  final Map<String, dynamic> payload;
  static const protocolVersion = 2;
}

@immutable
class RPCAnonymousMessage extends RPCMessage {
  const RPCAnonymousMessage({
    super.version,
    super.payload,
  });

  factory RPCAnonymousMessage.fromJson(Map<String, dynamic> data) =>
      RPCAnonymousMessage(
        version: data['version'],
        payload: data['payload'],
      );

  @override
  Map<String, dynamic> toJson() {
    return {
      'version': RPCMessage.protocolVersion,
      'payload': payload,
    };
  }

  @override
  FutureOr<T> map<T>({
    required FutureOr<T> Function(RPCAnonymousMessage) anonymous,
    required FutureOr<T> Function(RPCAuthenticatedMessage) authenticated,
  }) =>
      anonymous(this);
}

@immutable
class RPCAuthenticatedMessage extends RPCMessage {
  const RPCAuthenticatedMessage({
    super.version,
    super.payload,
    required this.session,
  });

  factory RPCAuthenticatedMessage.fromJson(
    Session session,
    Map<String, dynamic> data,
  ) {
    return RPCAuthenticatedMessage(
      session: session,
      version: data['version'],
      payload: jsonDecode(
        utf8.decode(
          aelib.hexToUint8List(
            aelib.uint8ListToHex(
              aelib.aesDecrypt(data['payload'], session.aesKey),
            ),
          ),
        ),
      ),
    );
  }

  final Session session;

  // static Future<RPCAuthenticatedMessage> fromJson(
  //   FutureOr<Session?> Function(String sessionId) findSession,
  //   Map<String, dynamic> data,
  // ) async {
  //   final sessionId = data['sessionId'];
  //   final session = await findSession(sessionId);

  //   if (session == null) throw Failure.invalidSession();

  //   return RPCAuthenticatedMessage(
  //     session: session,
  //     version: data['version'],
  //     payload: jsonDecode(
  //       utf8.decode(
  //         aelib.hexToUint8List(
  //           aelib.uint8ListToHex(
  //             aelib.aesDecrypt(data['payload'], session.aesKey),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  static String sessionIdFromJson(
    Map<String, dynamic> data,
  ) {
    return data['sessionId'];
  }

  @override
  Map<String, dynamic> toJson() => {
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

  @override
  FutureOr<T> map<T>({
    required FutureOr<T> Function(RPCAnonymousMessage) anonymous,
    required FutureOr<T> Function(RPCAuthenticatedMessage) authenticated,
  }) =>
      authenticated(this);
}
