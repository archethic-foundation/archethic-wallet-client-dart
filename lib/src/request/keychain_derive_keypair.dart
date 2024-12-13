// SPDX-License-Identifier: AGPL-3.0-or-later
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

@freezed
class KeychainDeriveKeypairRequest with _$KeychainDeriveKeypairRequest {
  const factory KeychainDeriveKeypairRequest({
    required String serviceName,
    @Default(0) int index,
    @Default('') String pathSuffix,
  }) = _KeychainDeriveKeypairRequest;
  const KeychainDeriveKeypairRequest._();

  factory KeychainDeriveKeypairRequest.fromJson(Map<String, dynamic> json) =>
      _$KeychainDeriveKeypairRequestFromJson(json);
}
