/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'keychain_derive_keypair.freezed.dart';
part 'keychain_derive_keypair.g.dart';

@freezed
class KeychainDeriveKeypairResult with _$KeychainDeriveKeypairResult {
  const factory KeychainDeriveKeypairResult({
    required String publicKey,
  }) = _KeychainDeriveKeypairResult;
  const KeychainDeriveKeypairResult._();

  factory KeychainDeriveKeypairResult.fromJson(Map<String, dynamic> json) =>
      _$KeychainDeriveKeypairResultFromJson(json);
}
