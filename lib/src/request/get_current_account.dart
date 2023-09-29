/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_current_account.freezed.dart';
part 'get_current_account.g.dart';

@freezed
class GetCurrentAccountResult with _$GetCurrentAccountResult {
  const factory GetCurrentAccountResult({
    required String shortName,
    required String serviceName,
    required String genesisAddress,
  }) = _GetCurrentAccountResult;
  const GetCurrentAccountResult._();

  factory GetCurrentAccountResult.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentAccountResultFromJson(json);
}
