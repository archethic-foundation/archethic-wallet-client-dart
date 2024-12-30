import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypt_payloads.freezed.dart';
part 'encrypt_payloads.g.dart';

@freezed
class EncryptPayloadsResult with _$EncryptPayloadsResult {
  const factory EncryptPayloadsResult({
    required List<EncryptPayloadsResultDetail> encryptedPayloads,
  }) = _EncryptPayloadsResult;
  const EncryptPayloadsResult._();

  factory EncryptPayloadsResult.fromJson(Map<String, dynamic> json) =>
      _$EncryptPayloadsResultFromJson(json);
}

@freezed
class EncryptPayloadsResultDetail with _$EncryptPayloadsResultDetail {
  const factory EncryptPayloadsResultDetail({
    required String encryptedPayload,
  }) = _EncryptPayloadsResultDetail;
  const EncryptPayloadsResultDetail._();

  factory EncryptPayloadsResultDetail.fromJson(Map<String, dynamic> json) =>
      _$EncryptPayloadsResultDetailFromJson(json);
}

@freezed
class EncryptPayloadRequestData with _$EncryptPayloadRequestData {
  const factory EncryptPayloadRequestData({
    required String payload,
    required bool isHexa,
  }) = _EncryptPayloadRequestData;
  const EncryptPayloadRequestData._();

  factory EncryptPayloadRequestData.fromJson(Map<String, dynamic> json) =>
      _$EncryptPayloadRequestDataFromJson(json);
}

@freezed
class EncryptPayloadRequest with _$EncryptPayloadRequest {
  const factory EncryptPayloadRequest({
    /// Service name to identify the derivation path to use
    required String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') String pathSuffix,

    /// - List of payloads to encrypt
    @Default([]) List<EncryptPayloadRequestData> payloads,
  }) = _EncryptPayloadRequest;

  const EncryptPayloadRequest._();

  factory EncryptPayloadRequest.fromJson(Map<String, dynamic> json) =>
      _$EncryptPayloadRequestFromJson(json);
}
