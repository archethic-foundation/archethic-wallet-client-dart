import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_session.freezed.dart';
part 'create_session.g.dart';

@freezed
class RPCSessionOrigin with _$RPCSessionOrigin {
  const factory RPCSessionOrigin({
    required String name,
    String? url,
    String? logo,
  }) = _RPCSessionOrigin;
  const RPCSessionOrigin._();

  factory RPCSessionOrigin.fromJson(Map<String, dynamic> json) =>
      _$RPCSessionOriginFromJson(json);
}

@freezed
class OpenSessionRequest with _$OpenSessionRequest {
  const factory OpenSessionRequest({
    required String challenge,
    required RPCSessionOrigin origin,
    required Duration maxDuration,
  }) = _OpenSessionRequest;
  const OpenSessionRequest._();

  factory OpenSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionRequestFromJson(json);
}

@freezed
class OpenSessionHandshakeRequest with _$OpenSessionHandshakeRequest {
  const factory OpenSessionHandshakeRequest({
    required String pubKey,
  }) = _OpenSessionHandshakeRequest;
  const OpenSessionHandshakeRequest._();

  factory OpenSessionHandshakeRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionHandshakeRequestFromJson(json);
}

@freezed
class OpenSessionHandshakeResponse with _$OpenSessionHandshakeResponse {
  const factory OpenSessionHandshakeResponse({
    required String aesKey,
    required String sessionId,
  }) = _OpenSessionHandshakeResponse;
  const OpenSessionHandshakeResponse._();

  factory OpenSessionHandshakeResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionHandshakeResponseFromJson(json);
}

@freezed
class OpenSessionChallengeRequest with _$OpenSessionChallengeRequest {
  const factory OpenSessionChallengeRequest({
    required String sessionId,
    required RPCSessionOrigin origin,
    required String challenge,
    required int maxDuration,
  }) = _OpenSessionChallengeRequest;
  const OpenSessionChallengeRequest._();

  factory OpenSessionChallengeRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionChallengeRequestFromJson(json);
}
