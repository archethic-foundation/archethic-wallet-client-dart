// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignTransactionsResult _$$_SignTransactionsResultFromJson(
        Map<String, dynamic> json) =>
    _$_SignTransactionsResult(
      signedTxs: (json['signedTxs'] as List<dynamic>)
          .map((e) =>
              SignTransactionsResultDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SignTransactionsResultToJson(
        _$_SignTransactionsResult instance) =>
    <String, dynamic>{
      'signedTxs': instance.signedTxs,
    };

_$_SignTransactionsResultDetail _$$_SignTransactionsResultDetailFromJson(
        Map<String, dynamic> json) =>
    _$_SignTransactionsResultDetail(
      address: json['address'] as String,
      previousPublicKey: json['previousPublicKey'] as String,
      previousSignature: json['previousSignature'] as String,
      originSignature: json['originSignature'] as String,
    );

Map<String, dynamic> _$$_SignTransactionsResultDetailToJson(
        _$_SignTransactionsResultDetail instance) =>
    <String, dynamic>{
      'address': instance.address,
      'previousPublicKey': instance.previousPublicKey,
      'previousSignature': instance.previousSignature,
      'originSignature': instance.originSignature,
    };
