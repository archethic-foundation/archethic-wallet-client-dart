// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RPCSubscriptionUpdateDTO _$$_RPCSubscriptionUpdateDTOFromJson(
        Map<String, dynamic> json) =>
    _$_RPCSubscriptionUpdateDTO(
      subscriptionId: json['subscriptionId'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_RPCSubscriptionUpdateDTOToJson(
        _$_RPCSubscriptionUpdateDTO instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'data': instance.data,
    };
