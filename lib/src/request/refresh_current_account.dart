/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_current_account.freezed.dart';
part 'refresh_current_account.g.dart';

@freezed
class RefreshCurrentAccountResult with _$RefreshCurrentAccountResult {
  const factory RefreshCurrentAccountResult() = _RefreshCurrentAccountResult;
  const RefreshCurrentAccountResult._();

  factory RefreshCurrentAccountResult.fromJson(Map<String, dynamic> json) =>
      _$RefreshCurrentAccountResultFromJson(json);
}
