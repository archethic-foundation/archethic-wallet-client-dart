// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_services_from_keychain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetServicesFromKeychainResult _$$_GetServicesFromKeychainResultFromJson(
        Map<String, dynamic> json) =>
    _$_GetServicesFromKeychainResult(
      services: (json['services'] as List<dynamic>)
          .map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetServicesFromKeychainResultToJson(
        _$_GetServicesFromKeychainResult instance) =>
    <String, dynamic>{
      'services': instance.services,
    };
