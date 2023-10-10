import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_session.freezed.dart';
part 'create_session.g.dart';

@freezed
class SessionRequestOrigin with _$SessionRequestOrigin {
  const factory SessionRequestOrigin({
    required String name,
    String? url,
    String? logo,
  }) = _SessionRequestOrigin;
  const SessionRequestOrigin._();

  factory SessionRequestOrigin.fromJson(Map<String, dynamic> json) =>
      _$SessionRequestOriginFromJson(json);
}

@freezed
class OpenSessionRequest with _$OpenSessionRequest {
  const factory OpenSessionRequest({
    required String challenge,
    required SessionRequestOrigin origin,
    required Duration maxDuration,
  }) = _OpenSessionRequest;
  const OpenSessionRequest._();

  factory OpenSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionRequestFromJson(json);
}

@freezed
class OpenSessionHandshakeRequest with _$OpenSessionHandshakeRequest {
  const OpenSessionHandshakeRequest._();
  const factory OpenSessionHandshakeRequest({
    required String pubKey,
  }) = _OpenSessionHandshakeRequest;

  factory OpenSessionHandshakeRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionHandshakeRequestFromJson(json);
}

@freezed
class OpenSessionHandshakeResponse with _$OpenSessionHandshakeResponse {
  const OpenSessionHandshakeResponse._();
  const factory OpenSessionHandshakeResponse({
    required String aesKey,
    required String sessionId,
  }) = _OpenSessionHandshakeResponse;

  factory OpenSessionHandshakeResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionHandshakeResponseFromJson(json);
}

@freezed
class OpenSessionChallengeRequest with _$OpenSessionChallengeRequest {
  const OpenSessionChallengeRequest._();
  const factory OpenSessionChallengeRequest({
    required String sessionId,
    required SessionRequestOrigin origin,
    required String challenge,
    required int maxDuration,
  }) = _OpenSessionChallengeRequest;

  factory OpenSessionChallengeRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionChallengeRequestFromJson(json);
}
