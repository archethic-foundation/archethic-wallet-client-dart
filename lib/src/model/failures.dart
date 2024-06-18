/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:json_rpc_2/json_rpc_2.dart';

enum Failure implements Exception {
  invalidParams(
    code: -32602,
    message: 'Invalid parameters',
  ),
  unsupportedMethod(
    code: -32601,
    message: 'Unsupported method.',
  ),
  userRejected(
    code: 4001,
    message: 'User rejected operation',
  ),
  connectivity(
    code: 4901,
    message: 'Connectivity issue.',
  ),
  other(
    code: 5000,
    message: 'Technical error',
  ),
  timeout(
    code: 5001,
    message: 'Operation timeout.',
  ),
  consensusNotReached(
    code: 5002,
    message: 'Validation consensus not reached',
  ),
  invalidTransaction(
    code: 5003,
    message: 'Invalid transaction',
  ),
  insufficientFunds(
    code: 5004,
    message: 'Insufficient funds.',
  ),
  unknownAccount(
    code: 5005,
    message: 'Unknown account.',
  ),
  invalidConfirmation(
    code: 5006,
    message: 'Invalid node confirmation.',
  ),
  serviceNotFound(
    code: 5007,
    message: 'Service not found.',
  ),
  serviceAlreadyExists(
    code: 5008,
    message: 'Service already exists in the keychain.',
  ),
  invalidSession(
    code: 5009,
    message: 'Invalid session.',
  );

  const Failure({
    required this.code,
    required this.message,
  });

  factory Failure.fromRpcErrorCode(int code) => Failure.values.firstWhere(
        (error) => error.code == code,
        orElse: () => Failure.other,
      );

  factory Failure.fromRpcException(RpcException exception) =>
      Failure.fromRpcErrorCode(exception.code);

  factory Failure.fromDeeplinkRpcFailure(DeeplinkRpcFailure failure) =>
      Failure.fromRpcErrorCode(failure.code);
  DeeplinkRpcFailure toDeeplinkRpcFailure() => DeeplinkRpcFailure(
        code: code,
        message: message,
      );

  final int code;
  final String message;
}