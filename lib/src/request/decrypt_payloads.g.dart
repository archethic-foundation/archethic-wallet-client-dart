// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decrypt_payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DecryptPayloadsResultImpl _$$DecryptPayloadsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$DecryptPayloadsResultImpl(
      decryptedPayloads: (json['decryptedPayloads'] as List<dynamic>)
          .map((e) =>
              DecryptPayloadsResultDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DecryptPayloadsResultImplToJson(
        _$DecryptPayloadsResultImpl instance) =>
    <String, dynamic>{
      'decryptedPayloads': instance.decryptedPayloads,
    };

_$DecryptPayloadsResultDetailImpl _$$DecryptPayloadsResultDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$DecryptPayloadsResultDetailImpl(
      decryptedPayload: json['decryptedPayload'] as String,
    );

Map<String, dynamic> _$$DecryptPayloadsResultDetailImplToJson(
        _$DecryptPayloadsResultDetailImpl instance) =>
    <String, dynamic>{
      'decryptedPayload': instance.decryptedPayload,
    };

_$DecryptPayloadRequestDataImpl _$$DecryptPayloadRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DecryptPayloadRequestDataImpl(
      payload: json['payload'] as String,
      isHexa: json['isHexa'] as bool,
    );

Map<String, dynamic> _$$DecryptPayloadRequestDataImplToJson(
        _$DecryptPayloadRequestDataImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'isHexa': instance.isHexa,
    };

_$DecryptPayloadRequestImpl _$$DecryptPayloadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DecryptPayloadRequestImpl(
      serviceName: json['serviceName'] as String,
      pathSuffix: json['pathSuffix'] as String? ?? '',
      description: json['description'] as Map<String, dynamic>? ?? const {},
      payloads: (json['payloads'] as List<dynamic>?)
              ?.map((e) =>
                  DecryptPayloadRequestData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DecryptPayloadRequestImplToJson(
        _$DecryptPayloadRequestImpl instance) =>
    <String, dynamic>{
      'serviceName': instance.serviceName,
      'pathSuffix': instance.pathSuffix,
      'description': instance.description,
      'payloads': instance.payloads,
    };
