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
class OpenSessionResponse with _$OpenSessionResponse {
  const factory OpenSessionResponse({
    required String sessionId,
  }) = _OpenSessionResponse;
  const OpenSessionResponse._();

  factory OpenSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenSessionResponseFromJson(json);
}
