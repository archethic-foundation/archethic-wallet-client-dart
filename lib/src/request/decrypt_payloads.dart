import 'package:freezed_annotation/freezed_annotation.dart';

part 'decrypt_payloads.freezed.dart';
part 'decrypt_payloads.g.dart';

@freezed
class DecryptPayloadsResult with _$DecryptPayloadsResult {
  const factory DecryptPayloadsResult({
    required List<DecryptPayloadsResultDetail> decryptedPayloads,
  }) = _DecryptPayloadsResult;
  const DecryptPayloadsResult._();

  factory DecryptPayloadsResult.fromJson(Map<String, dynamic> json) =>
      _$DecryptPayloadsResultFromJson(json);
}

@freezed
class DecryptPayloadsResultDetail with _$DecryptPayloadsResultDetail {
  const factory DecryptPayloadsResultDetail({
    required String decryptedPayload,
  }) = _DecryptPayloadsResultDetail;
  const DecryptPayloadsResultDetail._();

  factory DecryptPayloadsResultDetail.fromJson(Map<String, dynamic> json) =>
      _$DecryptPayloadsResultDetailFromJson(json);
}

@freezed
class DecryptPayloadRequestData with _$DecryptPayloadRequestData {
  const factory DecryptPayloadRequestData({
    required String payload,
    required bool isHexa,
  }) = _DecryptPayloadRequestData;
  const DecryptPayloadRequestData._();

  factory DecryptPayloadRequestData.fromJson(Map<String, dynamic> json) =>
      _$DecryptPayloadRequestDataFromJson(json);
}

@freezed
class DecryptPayloadRequest with _$DecryptPayloadRequest {
  const factory DecryptPayloadRequest({
    /// Service name to identify the derivation path to use
    required String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') String pathSuffix,

    /// Description to explain the decryption in multiple languages (key=Locale, value=description)
    @Default({}) Map<String, dynamic> description,

    /// - List of payloads to decrypt
    @Default([]) List<DecryptPayloadRequestData> payloads,
  }) = _DecryptPayloadRequest;

  const DecryptPayloadRequest._();

  factory DecryptPayloadRequest.fromJson(Map<String, dynamic> json) =>
      _$DecryptPayloadRequestFromJson(json);
}
