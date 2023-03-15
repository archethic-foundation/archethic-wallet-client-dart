// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_sub.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBalance _$$_AccountBalanceFromJson(Map<String, dynamic> json) =>
    _$_AccountBalance(
      nativeTokenName: json['nativeTokenName'] as String,
      nativeTokenValue: (json['nativeTokenValue'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AccountBalanceToJson(_$_AccountBalance instance) =>
    <String, dynamic>{
      'nativeTokenName': instance.nativeTokenName,
      'nativeTokenValue': instance.nativeTokenValue,
    };

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      name: json['name'] as String,
      genesisAddress: json['genesisAddress'] as String,
      lastAddress: json['lastAddress'] as String?,
      balance: json['balance'] == null
          ? null
          : AccountBalance.fromJson(json['balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'name': instance.name,
      'genesisAddress': instance.genesisAddress,
      'lastAddress': instance.lastAddress,
      'balance': instance.balance,
    };
