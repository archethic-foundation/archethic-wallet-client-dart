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
