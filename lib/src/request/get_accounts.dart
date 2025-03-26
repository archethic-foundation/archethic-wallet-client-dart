import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_accounts.freezed.dart';
part 'get_accounts.g.dart';

@freezed
class AppAccount with _$AppAccount {
  const factory AppAccount({
    required String shortName,
    required String serviceName,
    required String genesisAddress,
  }) = _AppAccount;

  const AppAccount._();

  factory AppAccount.fromJson(Map<String, dynamic> json) =>
      _$AppAccountFromJson(json);
}

@freezed
class GetAccountsResult with _$GetAccountsResult {
  const factory GetAccountsResult({
    required List<AppAccount> accounts,
  }) = _GetAccountsResult;
  const GetAccountsResult._();

  factory GetAccountsResult.fromJson(Map<String, dynamic> json) =>
      _$GetAccountsResultFromJson(json);
}

@freezed
class GetAccountsRequest with _$GetAccountsRequest {
  const factory GetAccountsRequest() = _GetAccountsRequest;
  const GetAccountsRequest._();

  factory GetAccountsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAccountsRequestFromJson(json);
}
