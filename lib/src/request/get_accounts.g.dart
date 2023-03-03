// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_accounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAccountsResult _$$_GetAccountsResultFromJson(Map<String, dynamic> json) =>
    _$_GetAccountsResult(
      accounts: (json['accounts'] as List<dynamic>)
          .map((e) => AppAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetAccountsResultToJson(
        _$_GetAccountsResult instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
    };

_$_AppAccount _$$_AppAccountFromJson(Map<String, dynamic> json) =>
    _$_AppAccount(
      name: json['name'] as String,
      genesisAddress: json['genesisAddress'] as String,
    );

Map<String, dynamic> _$$_AppAccountToJson(_$_AppAccount instance) =>
    <String, dynamic>{
      'name': instance.name,
      'genesisAddress': instance.genesisAddress,
    };
