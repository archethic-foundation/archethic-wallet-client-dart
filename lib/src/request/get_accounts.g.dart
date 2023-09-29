// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_accounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
