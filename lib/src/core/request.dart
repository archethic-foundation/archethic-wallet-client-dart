import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// Identifies a request source.
@freezed
class RequestOrigin with _$RequestOrigin {
  const factory RequestOrigin({
    required String name,
    String? url,
    String? logo,
  }) = _RequestOrigin;
  const RequestOrigin._();

  factory RequestOrigin.fromJson(Map<String, dynamic> json) =>
      _$RequestOriginFromJson(json);
}

@freezed
class Request with _$Request {
  const factory Request({
    required RequestOrigin origin,
    required int version, // Rpc protocol version
    required Map<String, dynamic> payload,
  }) = _Request;
  const Request._();

  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}
