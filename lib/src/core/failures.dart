import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure implements Exception {
  const Failure._();

  const factory Failure({
    required int code,
    String? message,
    Map<String, dynamic>? data,
    Object? cause,
    StackTrace? stack,
  }) = _Failure;

  factory Failure.unsupportedMethod() => const Failure(
        code: -32601,
        message: 'Unsupported method.',
      );
  factory Failure.timeout() => const Failure(
        code: 5001,
        message: 'Operation timeout.',
      );
  factory Failure.connectivity() => const Failure(
        code: 4901,
        message: 'Connectivity issue.',
      );
  factory Failure.consensusNotReached() => const Failure(
        code: 5002,
        message: 'Validation consensus not reached',
      );
  factory Failure.invalidParams() => const Failure(
        code: -32602,
        message: 'Invalid parameters',
      );
  factory Failure.invalidTransaction() => const Failure(
        code: 5003,
        message: 'Invalid transaction',
      );
  factory Failure.invalidConfirmation() => const Failure(
        code: 5006,
        message: 'Invalid node confirmation.',
      );
  factory Failure.insufficientFunds() => const Failure(
        code: 5004,
        message: 'Insufficient funds.',
      );
  factory Failure.userRejected() => const Failure(
        code: 4001,
        message: 'User rejected operation',
      );
  factory Failure.unknownAccount() => const Failure(
        code: 5005,
        message: 'Unknown account.',
      );
  factory Failure.other({
    Object? cause,
    StackTrace? stack,
  }) =>
      Failure(
        code: 5000,
        message: 'Technical error',
        cause: cause,
        stack: stack,
      );

  factory Failure.fromDeeplinkRpcFailure(DeeplinkRpcFailure failure) {
    switch (failure.code) {
      case 5001:
        return Failure.timeout();
      case 4901:
        return Failure.connectivity();
      case 5002:
        return Failure.consensusNotReached();
      case -32602:
        return Failure.invalidParams();
      case 5003:
        return Failure.invalidParams();
      case 5006:
        return Failure.invalidConfirmation();
      case 5004:
        return Failure.insufficientFunds();
      case 4001:
        return Failure.userRejected();
      case 5005:
        return Failure.unknownAccount();
      default:
        return Failure.other();
    }
  }
}
