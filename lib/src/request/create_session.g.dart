// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RPCSessionOriginImpl _$$RPCSessionOriginImplFromJson(
        Map<String, dynamic> json) =>
    _$RPCSessionOriginImpl(
      name: json['name'] as String,
      url: json['url'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$RPCSessionOriginImplToJson(
        _$RPCSessionOriginImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'logo': instance.logo,
    };

_$OpenSessionRequestImpl _$$OpenSessionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenSessionRequestImpl(
      challenge: json['challenge'] as String,
      origin: RPCSessionOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      maxDuration: Duration(microseconds: json['maxDuration'] as int),
    );

Map<String, dynamic> _$$OpenSessionRequestImplToJson(
        _$OpenSessionRequestImpl instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'origin': instance.origin,
      'maxDuration': instance.maxDuration.inMicroseconds,
    };

_$OpenSessionHandshakeRequestImpl _$$OpenSessionHandshakeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenSessionHandshakeRequestImpl(
      pubKey: json['pubKey'] as String,
    );

Map<String, dynamic> _$$OpenSessionHandshakeRequestImplToJson(
        _$OpenSessionHandshakeRequestImpl instance) =>
    <String, dynamic>{
      'pubKey': instance.pubKey,
    };

_$OpenSessionHandshakeResponseImpl _$$OpenSessionHandshakeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenSessionHandshakeResponseImpl(
      aesKey: json['aesKey'] as String,
      sessionId: json['sessionId'] as String,
    );

Map<String, dynamic> _$$OpenSessionHandshakeResponseImplToJson(
        _$OpenSessionHandshakeResponseImpl instance) =>
    <String, dynamic>{
      'aesKey': instance.aesKey,
      'sessionId': instance.sessionId,
    };

_$OpenSessionChallengeRequestImpl _$$OpenSessionChallengeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenSessionChallengeRequestImpl(
      sessionId: json['sessionId'] as String,
      origin: RPCSessionOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      challenge: json['challenge'] as String,
      maxDuration: json['maxDuration'] as int,
    );

Map<String, dynamic> _$$OpenSessionChallengeRequestImplToJson(
        _$OpenSessionChallengeRequestImpl instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'origin': instance.origin,
      'challenge': instance.challenge,
      'maxDuration': instance.maxDuration,
    };

_$OpenSessionChallengeResponseImpl _$$OpenSessionChallengeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenSessionChallengeResponseImpl(
      sessionId: json['sessionId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$OpenSessionChallengeResponseImplToJson(
        _$OpenSessionChallengeResponseImpl instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
