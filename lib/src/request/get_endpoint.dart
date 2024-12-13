// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_endpoint.freezed.dart';
part 'get_endpoint.g.dart';

@freezed
class GetEndpointResult with _$GetEndpointResult {
  const factory GetEndpointResult({
    required String endpointUrl,
  }) = _GetEndpointResult;
  const GetEndpointResult._();

  factory GetEndpointResult.fromJson(Map<String, dynamic> json) =>
      _$GetEndpointResultFromJson(json);
}

@freezed
class GetEndpointRequest with _$GetEndpointRequest {
  const factory GetEndpointRequest() = _GetEndpointRequest;
  const GetEndpointRequest._();

  factory GetEndpointRequest.fromJson(Map<String, dynamic> json) =>
      _$GetEndpointRequestFromJson(json);
}
