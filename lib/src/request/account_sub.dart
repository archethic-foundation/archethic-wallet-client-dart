import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_sub.freezed.dart';
part 'account_sub.g.dart';

@freezed
class AccountBalance with _$AccountBalance {
  const factory AccountBalance({
    required String nativeTokenName,
    required double nativeTokenValue,
  }) = _AccountBalance;
  const AccountBalance._();

  factory AccountBalance.fromJson(Map<String, dynamic> json) =>
      _$AccountBalanceFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account({
    required String name,
    required String genesisAddress,
    String? lastAddress,
    AccountBalance? balance,
  }) = _Account;
  const Account._();

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class SubscribeAccountRequest with _$SubscribeAccountRequest {
  const factory SubscribeAccountRequest({
    required String serviceName,
  }) = _SubscribeAccountRequest;
  const SubscribeAccountRequest._();

  factory SubscribeAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscribeAccountRequestFromJson(json);
}
