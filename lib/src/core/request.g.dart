// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOriginImpl _$$RequestOriginImplFromJson(Map<String, dynamic> json) =>
    _$RequestOriginImpl(
      name: json['name'] as String,
      url: json['url'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$RequestOriginImplToJson(_$RequestOriginImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'logo': instance.logo,
    };

_$RequestImpl _$$RequestImplFromJson(Map<String, dynamic> json) =>
    _$RequestImpl(
      origin: RequestOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      version: (json['version'] as num).toInt(),
      payload: json['payload'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$RequestImplToJson(_$RequestImpl instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'version': instance.version,
      'payload': instance.payload,
    };
