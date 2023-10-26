// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendTransactionResultImpl _$$SendTransactionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SendTransactionResultImpl(
      transactionAddress: json['transactionAddress'] as String,
      nbConfirmations: json['nbConfirmations'] as int,
      maxConfirmations: json['maxConfirmations'] as int,
    );

Map<String, dynamic> _$$SendTransactionResultImplToJson(
        _$SendTransactionResultImpl instance) =>
    <String, dynamic>{
      'transactionAddress': instance.transactionAddress,
      'nbConfirmations': instance.nbConfirmations,
      'maxConfirmations': instance.maxConfirmations,
    };

_$SendTransactionRequestImpl _$$SendTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendTransactionRequestImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      type: json['type'] as String,
      version: json['version'] as int,
    );

Map<String, dynamic> _$$SendTransactionRequestImplToJson(
        _$SendTransactionRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.type,
      'version': instance.version,
    };
