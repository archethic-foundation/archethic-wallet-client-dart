/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_payloads.freezed.dart';
part 'sign_payloads.g.dart';

@freezed
class SignPayloadsResult with _$SignPayloadsResult {
  const factory SignPayloadsResult({
    required List<SignPayloadsResultDetail> signedPayloads,
  }) = _SignPayloadsResult;
  const SignPayloadsResult._();

  factory SignPayloadsResult.fromJson(Map<String, dynamic> json) =>
      _$SignPayloadsResultFromJson(json);
}

@freezed
class SignPayloadsResultDetail with _$SignPayloadsResultDetail {
  const factory SignPayloadsResultDetail({
    /// Signature of payload
    required String signedPayload,
  }) = _SignPayloadsResultDetail;
  const SignPayloadsResultDetail._();

  factory SignPayloadsResultDetail.fromJson(Map<String, dynamic> json) =>
      _$SignPayloadsResultDetailFromJson(json);
}

@freezed
class SignPayloadRequestData with _$SignPayloadRequestData {
  const factory SignPayloadRequestData({
    required String payload,
    required bool isHexa,
  }) = _SignPayloadRequestData;
  const SignPayloadRequestData._();

  factory SignPayloadRequestData.fromJson(Map<String, dynamic> json) =>
      _$SignPayloadRequestDataFromJson(json);
}

@freezed
class SignPayloadRequest with _$SignPayloadRequest {
  const factory SignPayloadRequest({
    /// Service name to identify the derivation path to use
    required String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') String pathSuffix,

    /// Description to explain the signature in multiple languages (key=Locale, value=description)
    @Default({}) Map<String, dynamic> description,

    /// - List of payloads to sign
    @Default([]) List<SignPayloadRequestData> payloads,
  }) = _SignPayloadRequest;

  const SignPayloadRequest._();

  factory SignPayloadRequest.fromJson(Map<String, dynamic> json) =>
      _$SignPayloadRequestFromJson(json);
}
