import 'package:archethic_lib_dart/archethic_lib_dart.dart';
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

@freezed
class SignTransactionRequestData with _$SignTransactionRequestData {
  const factory SignTransactionRequestData({
    required Data data,
    required String type,
    required int version,
  }) = _SignTransactionRequestData;
  const SignTransactionRequestData._();

  factory SignTransactionRequestData.fromJson(Map<String, dynamic> json) =>
      _$SignTransactionRequestDataFromJson(json);
}

@freezed
class SignTransactionRequest with _$SignTransactionRequest {
  const factory SignTransactionRequest({
    /// Service name to identify the derivation path to use
    required String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') String pathSuffix,

    /// Description to explain the signature in multiple languages (key=Locale, value=description)
    @Default({}) Map<String, dynamic> description,

    /// - List of transaction's infos
    @Default([]) List<SignTransactionRequestData> transactions,
  }) = _SignTransactionRequest;

  const SignTransactionRequest._();

  factory SignTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$SignTransactionRequestFromJson(json);
}
