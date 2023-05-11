/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_rpc_2/json_rpc_2.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure implements Exception {
  const factory Failure({
    required int code,
    String? message,
    Map<String, dynamic>? data,
    Object? cause,
    StackTrace? stack,
  }) = _Failure;
  const Failure._();

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
  factory Failure.serviceNotFound() => const Failure(
        code: 5007,
        message: 'Service not found.',
      );
  factory Failure.serviceAlreadyExists() => const Failure(
        code: 5008,
        message: 'Service already exists in the keychain.',
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

  factory Failure.fromRpcException(RpcException exception) {
    switch (exception.code) {
      case -32602:
        return Failure.invalidParams();
      case 4001:
        return Failure.userRejected();
      case 4901:
        return Failure.connectivity();
      case 5001:
        return Failure.timeout();
      case 5002:
        return Failure.consensusNotReached();
      case 5003:
        return Failure.invalidTransaction();
      case 5006:
        return Failure.invalidConfirmation();
      case 5004:
        return Failure.insufficientFunds();
      case 5005:
        return Failure.unknownAccount();
      case 5007:
        return Failure.serviceNotFound();
      case 5008:
        return Failure.serviceAlreadyExists();
      default:
        return Failure.other();
    }
  }

  factory Failure.fromDeeplinkRpcFailure(DeeplinkRpcFailure failure) {
    switch (failure.code) {
      case -32602:
        return Failure.invalidParams();
      case 4001:
        return Failure.userRejected();
      case 4901:
        return Failure.connectivity();
      case 5001:
        return Failure.timeout();
      case 5002:
        return Failure.consensusNotReached();
      case 5003:
        return Failure.invalidTransaction();
      case 5004:
        return Failure.insufficientFunds();
      case 5005:
        return Failure.unknownAccount();
      case 5006:
        return Failure.invalidConfirmation();
      case 5007:
        return Failure.serviceNotFound();
      case 5008:
        return Failure.serviceAlreadyExists();
      default:
        return Failure.other();
    }
  }
}
