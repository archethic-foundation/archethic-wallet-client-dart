// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keychain_derive_keypair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeychainDeriveKeypairResultImpl _$$KeychainDeriveKeypairResultImplFromJson(
        Map<String, dynamic> json) =>
    _$KeychainDeriveKeypairResultImpl(
      publicKey: json['publicKey'] as String,
    );

Map<String, dynamic> _$$KeychainDeriveKeypairResultImplToJson(
        _$KeychainDeriveKeypairResultImpl instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
    };

_$KeychainDeriveKeypairRequestImpl _$$KeychainDeriveKeypairRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$KeychainDeriveKeypairRequestImpl(
      serviceName: json['serviceName'] as String,
      index: json['index'] as int? ?? 0,
      pathSuffix: json['pathSuffix'] as String? ?? '',
    );

Map<String, dynamic> _$$KeychainDeriveKeypairRequestImplToJson(
        _$KeychainDeriveKeypairRequestImpl instance) =>
    <String, dynamic>{
      'serviceName': instance.serviceName,
      'index': instance.index,
      'pathSuffix': instance.pathSuffix,
    };
