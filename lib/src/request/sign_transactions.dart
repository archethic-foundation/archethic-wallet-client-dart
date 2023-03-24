/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_transactions.freezed.dart';
part 'sign_transactions.g.dart';

@freezed
class SignTransactionsResult with _$SignTransactionsResult {
  const factory SignTransactionsResult({
    required List<SignTransactionsResultDetail> signedTxs,
  }) = _SignTransactionsResult;
  const SignTransactionsResult._();

  factory SignTransactionsResult.fromJson(Map<String, dynamic> json) =>
      _$SignTransactionsResultFromJson(json);
}

@freezed
class SignTransactionsResultDetail with _$SignTransactionsResultDetail {
  const factory SignTransactionsResultDetail({
    /// Address: hash of the new generated public key for the given transaction
    required String address,

    /// Previous generated public key matching the previous signature
    required String previousPublicKey,

    /// Signature from the previous public key
    required String previousSignature,

    /// Signature from the device which originated the transaction (used in the Proof of work)
    required String originSignature,
  }) = _SignTransactionsResultDetail;
  const SignTransactionsResultDetail._();

  factory SignTransactionsResultDetail.fromJson(Map<String, dynamic> json) =>
      _$SignTransactionsResultDetailFromJson(json);
}
