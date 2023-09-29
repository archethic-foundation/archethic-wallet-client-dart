// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RPCSubscriptionUpdateDTOImpl _$$RPCSubscriptionUpdateDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RPCSubscriptionUpdateDTOImpl(
      subscriptionId: json['subscriptionId'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$RPCSubscriptionUpdateDTOImplToJson(
        _$RPCSubscriptionUpdateDTOImpl instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'data': instance.data,
    };
