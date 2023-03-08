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
class RPCSubscriptionUpdateDTO with _$RPCSubscriptionUpdateDTO {
  const factory RPCSubscriptionUpdateDTO({
    required String subscriptionId,
    required Map<String, dynamic> data,
  }) = _RPCSubscriptionUpdateDTO;

  const RPCSubscriptionUpdateDTO._();

  factory RPCSubscriptionUpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$RPCSubscriptionUpdateDTOFromJson(json);
}
