/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'keychain_derive_address.freezed.dart';
part 'keychain_derive_address.g.dart';

@freezed
class KeychainDeriveAddressResult with _$KeychainDeriveAddressResult {
  const factory KeychainDeriveAddressResult({
    required String address,
  }) = _KeychainDeriveAddressResult;
  const KeychainDeriveAddressResult._();

  factory KeychainDeriveAddressResult.fromJson(Map<String, dynamic> json) =>
      _$KeychainDeriveAddressResultFromJson(json);
}
