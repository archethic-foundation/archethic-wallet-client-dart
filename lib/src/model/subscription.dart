import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
class Subscription<DataT> with _$Subscription<DataT> {
  const factory Subscription({
    required String id,
    required Stream<DataT> updates,
  }) = _Subscription;

  const Subscription._();
}

@freezed
class SubscriptionUpdate with _$SubscriptionUpdate {
  const factory SubscriptionUpdate({
    required String subscriptionId,
    required Map<String, dynamic> data,
  }) = _SubscriptionUpdate;

  const SubscriptionUpdate._();

  factory SubscriptionUpdate.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionUpdateFromJson(json);
}

@freezed
class SubscribeResponse with _$SubscribeResponse {
  const factory SubscribeResponse({
    required String subscriptionId,
  }) = _SubscribeResponse;
  const SubscribeResponse._();

  factory SubscribeResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscribeResponseFromJson(json);
}

@freezed
class UnsubscribeRequest with _$UnsubscribeRequest {
  const factory UnsubscribeRequest({
    required String subscriptionId,
  }) = _UnsubscribeRequest;
  const UnsubscribeRequest._();

  factory UnsubscribeRequest.fromJson(Map<String, dynamic> json) =>
      _$UnsubscribeRequestFromJson(json);
}
