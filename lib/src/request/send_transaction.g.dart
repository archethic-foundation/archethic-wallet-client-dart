// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendTransactionResult _$$_SendTransactionResultFromJson(
        Map<String, dynamic> json) =>
    _$_SendTransactionResult(
      transactionAddress: json['transactionAddress'] as String,
      nbConfirmations: json['nbConfirmations'] as int,
      maxConfirmations: json['maxConfirmations'] as int,
    );

Map<String, dynamic> _$$_SendTransactionResultToJson(
        _$_SendTransactionResult instance) =>
    <String, dynamic>{
      'transactionAddress': instance.transactionAddress,
      'nbConfirmations': instance.nbConfirmations,
      'maxConfirmations': instance.maxConfirmations,
    };
