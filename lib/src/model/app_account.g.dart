// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppAccountImpl _$$AppAccountImplFromJson(Map<String, dynamic> json) =>
    _$AppAccountImpl(
      shortName: json['shortName'] as String,
      serviceName: json['serviceName'] as String,
      genesisAddress: json['genesisAddress'] as String,
    );

Map<String, dynamic> _$$AppAccountImplToJson(_$AppAccountImpl instance) =>
    <String, dynamic>{
      'shortName': instance.shortName,
      'serviceName': instance.serviceName,
      'genesisAddress': instance.genesisAddress,
    };
