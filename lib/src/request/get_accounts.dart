/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_accounts.freezed.dart';
part 'get_accounts.g.dart';

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
class AppAccount with _$AppAccount {
  const factory AppAccount({
    required String name,
    required String genesisAddress,
  }) = _AppAccount;

  const AppAccount._();

  factory AppAccount.fromJson(Map<String, dynamic> json) =>
      _$AppAccountFromJson(json);
}
