// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_sub.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountBalanceImpl _$$AccountBalanceImplFromJson(Map<String, dynamic> json) =>
    _$AccountBalanceImpl(
      nativeTokenName: json['nativeTokenName'] as String,
      nativeTokenValue: (json['nativeTokenValue'] as num).toDouble(),
    );

Map<String, dynamic> _$$AccountBalanceImplToJson(
        _$AccountBalanceImpl instance) =>
    <String, dynamic>{
      'nativeTokenName': instance.nativeTokenName,
      'nativeTokenValue': instance.nativeTokenValue,
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      name: json['name'] as String,
      genesisAddress: json['genesisAddress'] as String,
      lastAddress: json['lastAddress'] as String?,
      balance: json['balance'] == null
          ? null
          : AccountBalance.fromJson(json['balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'genesisAddress': instance.genesisAddress,
      'lastAddress': instance.lastAddress,
      'balance': instance.balance,
    };
