// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionRequestOriginImpl _$$SessionRequestOriginImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionRequestOriginImpl(
      name: json['name'] as String,
      url: json['url'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$SessionRequestOriginImplToJson(
        _$SessionRequestOriginImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'logo': instance.logo,
    };

_$OpenSessionRequestImpl _$$OpenSessionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenSessionRequestImpl(
      challenge: json['challenge'] as String,
      origin:
          SessionRequestOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      maxDuration: Duration(microseconds: json['maxDuration'] as int),
    );

Map<String, dynamic> _$$OpenSessionRequestImplToJson(
        _$OpenSessionRequestImpl instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'origin': instance.origin,
      'maxDuration': instance.maxDuration.inMicroseconds,
    };

_$OpenSessionResponseImpl _$$OpenSessionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenSessionResponseImpl(
      sessionId: json['sessionId'] as String,
    );

Map<String, dynamic> _$$OpenSessionResponseImplToJson(
        _$OpenSessionResponseImpl instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
    };
