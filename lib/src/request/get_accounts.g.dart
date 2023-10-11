// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_accounts.dart';

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

_$GetAccountsResultImpl _$$GetAccountsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAccountsResultImpl(
      accounts: (json['accounts'] as List<dynamic>)
          .map((e) => AppAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAccountsResultImplToJson(
        _$GetAccountsResultImpl instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
    };
