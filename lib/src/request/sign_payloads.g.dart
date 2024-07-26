// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignPayloadsResultImpl _$$SignPayloadsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SignPayloadsResultImpl(
      signedPayloads: (json['signedPayloads'] as List<dynamic>)
          .map((e) =>
              SignPayloadsResultDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SignPayloadsResultImplToJson(
        _$SignPayloadsResultImpl instance) =>
    <String, dynamic>{
      'signedPayloads': instance.signedPayloads,
    };

_$SignPayloadsResultDetailImpl _$$SignPayloadsResultDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$SignPayloadsResultDetailImpl(
      signedPayload: json['signedPayload'] as String,
    );

Map<String, dynamic> _$$SignPayloadsResultDetailImplToJson(
        _$SignPayloadsResultDetailImpl instance) =>
    <String, dynamic>{
      'signedPayload': instance.signedPayload,
    };

_$SignPayloadRequestDataImpl _$$SignPayloadRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SignPayloadRequestDataImpl(
      payload: json['payload'] as String,
      isHexa: json['isHexa'] as bool,
    );

Map<String, dynamic> _$$SignPayloadRequestDataImplToJson(
        _$SignPayloadRequestDataImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'isHexa': instance.isHexa,
    };

_$SignPayloadRequestImpl _$$SignPayloadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SignPayloadRequestImpl(
      serviceName: json['serviceName'] as String,
      pathSuffix: json['pathSuffix'] as String? ?? '',
      description: json['description'] as Map<String, dynamic>? ?? const {},
      payloads: (json['payloads'] as List<dynamic>?)
              ?.map((e) =>
                  SignPayloadRequestData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SignPayloadRequestImplToJson(
        _$SignPayloadRequestImpl instance) =>
    <String, dynamic>{
      'serviceName': instance.serviceName,
      'pathSuffix': instance.pathSuffix,
      'description': instance.description,
      'payloads': instance.payloads,
    };
