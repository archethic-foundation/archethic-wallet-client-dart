// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptPayloadsResultImpl _$$EncryptPayloadsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptPayloadsResultImpl(
      encryptedPayloads: (json['encryptedPayloads'] as List<dynamic>)
          .map((e) =>
              EncryptPayloadsResultDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EncryptPayloadsResultImplToJson(
        _$EncryptPayloadsResultImpl instance) =>
    <String, dynamic>{
      'encryptedPayloads': instance.encryptedPayloads,
    };

_$EncryptPayloadsResultDetailImpl _$$EncryptPayloadsResultDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptPayloadsResultDetailImpl(
      encryptedPayload: json['encryptedPayload'] as String,
    );

Map<String, dynamic> _$$EncryptPayloadsResultDetailImplToJson(
        _$EncryptPayloadsResultDetailImpl instance) =>
    <String, dynamic>{
      'encryptedPayload': instance.encryptedPayload,
    };

_$EncryptPayloadRequestDataImpl _$$EncryptPayloadRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptPayloadRequestDataImpl(
      payload: json['payload'] as String,
      isHexa: json['isHexa'] as bool,
    );

Map<String, dynamic> _$$EncryptPayloadRequestDataImplToJson(
        _$EncryptPayloadRequestDataImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'isHexa': instance.isHexa,
    };

_$EncryptPayloadRequestImpl _$$EncryptPayloadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptPayloadRequestImpl(
      serviceName: json['serviceName'] as String,
      pathSuffix: json['pathSuffix'] as String? ?? '',
      payloads: (json['payloads'] as List<dynamic>?)
              ?.map((e) =>
                  EncryptPayloadRequestData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EncryptPayloadRequestImplToJson(
        _$EncryptPayloadRequestImpl instance) =>
    <String, dynamic>{
      'serviceName': instance.serviceName,
      'pathSuffix': instance.pathSuffix,
      'payloads': instance.payloads,
    };
