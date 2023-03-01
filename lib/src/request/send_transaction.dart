/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_transaction.freezed.dart';
part 'send_transaction.g.dart';

@freezed
class SendTransactionResult with _$SendTransactionResult {
  const factory SendTransactionResult({
    required String transactionAddress,
    required int nbConfirmations,
    required int maxConfirmations,
  }) = _SendTransactionResult;
  const SendTransactionResult._();

  factory SendTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$SendTransactionResultFromJson(json);
}
