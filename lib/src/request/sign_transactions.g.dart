// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignTransactionsResultImpl _$$SignTransactionsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SignTransactionsResultImpl(
      signedTxs: (json['signedTxs'] as List<dynamic>)
          .map((e) =>
              SignTransactionsResultDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SignTransactionsResultImplToJson(
        _$SignTransactionsResultImpl instance) =>
    <String, dynamic>{
      'signedTxs': instance.signedTxs,
    };

_$SignTransactionsResultDetailImpl _$$SignTransactionsResultDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$SignTransactionsResultDetailImpl(
      address: json['address'] as String,
      previousPublicKey: json['previousPublicKey'] as String,
      previousSignature: json['previousSignature'] as String,
      originSignature: json['originSignature'] as String,
    );

Map<String, dynamic> _$$SignTransactionsResultDetailImplToJson(
        _$SignTransactionsResultDetailImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'previousPublicKey': instance.previousPublicKey,
      'previousSignature': instance.previousSignature,
      'originSignature': instance.originSignature,
    };
