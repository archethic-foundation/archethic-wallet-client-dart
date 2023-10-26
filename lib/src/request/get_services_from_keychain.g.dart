// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_services_from_keychain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetServicesFromKeychainResultImpl
    _$$GetServicesFromKeychainResultImplFromJson(Map<String, dynamic> json) =>
        _$GetServicesFromKeychainResultImpl(
          services: (json['services'] as List<dynamic>)
              .map((e) => Service.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetServicesFromKeychainResultImplToJson(
        _$GetServicesFromKeychainResultImpl instance) =>
    <String, dynamic>{
      'services': instance.services,
    };

_$GetServicesFromKeychainRequestImpl
    _$$GetServicesFromKeychainRequestImplFromJson(Map<String, dynamic> json) =>
        _$GetServicesFromKeychainRequestImpl();

Map<String, dynamic> _$$GetServicesFromKeychainRequestImplToJson(
        _$GetServicesFromKeychainRequestImpl instance) =>
    <String, dynamic>{};
