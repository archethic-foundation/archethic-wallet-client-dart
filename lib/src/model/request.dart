/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'dart:convert';
import 'dart:typed_data';

import 'package:archethic_lib_dart/archethic_lib_dart.dart' as aelib;
import 'package:archethic_wallet_client/src/model/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class RPCRequest {
  const RPCRequest({
    this.payload = const {},
  });

  const factory RPCRequest.anonymous({Map<String, dynamic> payload}) =
      RPCAnonymousRequest;
  const factory RPCRequest.authenticated({Map<String, dynamic> payload}) =
      RPCAuthenticatedRequest;

  T map<T>({
    required T Function(RPCAnonymousRequest) anonymous,
    required T Function(RPCAuthenticatedRequest) authenticated,
  });

  final Map<String, dynamic> payload;

  static const protocolVersion = 2;
}

@immutable
class RPCAnonymousRequest extends RPCRequest {
  const RPCAnonymousRequest({
    super.payload,
  });

  factory RPCAnonymousRequest.fromJson(Map<String, dynamic> data) =>
      RPCAnonymousRequest(payload: data);

  @override
  T map<T>({
    required T Function(RPCAnonymousRequest) anonymous,
    required T Function(RPCAuthenticatedRequest) authenticated,
  }) =>
      anonymous(this);

  Map<String, dynamic> toJson() {
    return {
      'version': RPCRequest.protocolVersion,
      'payload': payload,
    };
  }
}

@immutable
class RPCAuthenticatedRequest extends RPCRequest {
  const RPCAuthenticatedRequest({
    super.payload,
  });

  factory RPCAuthenticatedRequest.fromJson(
    Session session,
    String data,
  ) =>
      RPCAuthenticatedRequest(
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
    required T Function(RPCAnonymousRequest) anonymous,
    required T Function(RPCAuthenticatedRequest) authenticated,
  }) =>
      authenticated(this);

  Map<String, dynamic> toJson(Session session) {
    return {
      'sessionId': session.sessionId,
      'version': RPCRequest.protocolVersion,
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
