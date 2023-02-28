// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestOrigin _$$_RequestOriginFromJson(Map<String, dynamic> json) =>
    _$_RequestOrigin(
      name: json['name'] as String,
      url: json['url'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$_RequestOriginToJson(_$_RequestOrigin instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'logo': instance.logo,
    };

_$_Request _$$_RequestFromJson(Map<String, dynamic> json) => _$_Request(
      origin: RequestOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      version: json['version'] as int,
      payload: json['payload'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_RequestToJson(_$_Request instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'version': instance.version,
      'payload': instance.payload,
    };
