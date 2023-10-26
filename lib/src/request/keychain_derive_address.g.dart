// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keychain_derive_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeychainDeriveAddressResultImpl _$$KeychainDeriveAddressResultImplFromJson(
        Map<String, dynamic> json) =>
    _$KeychainDeriveAddressResultImpl(
      address: json['address'] as String,
    );

Map<String, dynamic> _$$KeychainDeriveAddressResultImplToJson(
        _$KeychainDeriveAddressResultImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
    };

_$KeychainDeriveAddressRequestImpl _$$KeychainDeriveAddressRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$KeychainDeriveAddressRequestImpl(
      serviceName: json['serviceName'] as String,
      index: json['index'] as int? ?? 0,
      pathSuffix: json['pathSuffix'] as String? ?? '',
    );

Map<String, dynamic> _$$KeychainDeriveAddressRequestImplToJson(
        _$KeychainDeriveAddressRequestImpl instance) =>
    <String, dynamic>{
      'serviceName': instance.serviceName,
      'index': instance.index,
      'pathSuffix': instance.pathSuffix,
    };
