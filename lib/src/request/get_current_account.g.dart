// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_current_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCurrentAccountResultImpl _$$GetCurrentAccountResultImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCurrentAccountResultImpl(
      shortName: json['shortName'] as String,
      serviceName: json['serviceName'] as String,
      genesisAddress: json['genesisAddress'] as String,
    );

Map<String, dynamic> _$$GetCurrentAccountResultImplToJson(
        _$GetCurrentAccountResultImpl instance) =>
    <String, dynamic>{
      'shortName': instance.shortName,
      'serviceName': instance.serviceName,
      'genesisAddress': instance.genesisAddress,
    };
