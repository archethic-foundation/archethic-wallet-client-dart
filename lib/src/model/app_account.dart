/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_account.freezed.dart';
part 'app_account.g.dart';

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
