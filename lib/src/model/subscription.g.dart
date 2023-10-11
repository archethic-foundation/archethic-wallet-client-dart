// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionUpdateImpl _$$SubscriptionUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionUpdateImpl(
      subscriptionId: json['subscriptionId'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$SubscriptionUpdateImplToJson(
        _$SubscriptionUpdateImpl instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'data': instance.data,
    };

_$SubscribeResponseImpl _$$SubscribeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscribeResponseImpl(
      subscriptionId: json['subscriptionId'] as String,
    );

Map<String, dynamic> _$$SubscribeResponseImplToJson(
        _$SubscribeResponseImpl instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
    };

_$UnsubscribeRequestImpl _$$UnsubscribeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UnsubscribeRequestImpl(
      subscriptionId: json['subscriptionId'] as String,
    );

Map<String, dynamic> _$$UnsubscribeRequestImplToJson(
        _$UnsubscribeRequestImpl instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
    };
