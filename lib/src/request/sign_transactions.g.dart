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

_$SignTransactionRequestDataImpl _$$SignTransactionRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SignTransactionRequestDataImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      type: json['type'] as String,
      version: json['version'] as int,
    );

Map<String, dynamic> _$$SignTransactionRequestDataImplToJson(
        _$SignTransactionRequestDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.type,
      'version': instance.version,
    };

_$SignTransactionRequestImpl _$$SignTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SignTransactionRequestImpl(
      serviceName: json['serviceName'] as String,
      pathSuffix: json['pathSuffix'] as String? ?? '',
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => SignTransactionRequestData.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SignTransactionRequestImplToJson(
        _$SignTransactionRequestImpl instance) =>
    <String, dynamic>{
      'serviceName': instance.serviceName,
      'pathSuffix': instance.pathSuffix,
      'transactions': instance.transactions,
    };
