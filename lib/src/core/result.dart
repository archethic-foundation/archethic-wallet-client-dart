/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:flutter/foundation.dart';
import 'package:libdart_dapp/src/core/failures.dart';

extension FutureResult<ValueT, FailureT extends Exception>
    on Future<Result<ValueT, FailureT>> {
  /// Returns the value if it is a success.
  /// Else, throws the error as an [Exception].
  ///
  /// Thanks to this extension, instead of :
  /// ```dart
  /// Future<Result<Value, Failure>> result;
  /// final value = (await result).valueOrThrow;
  /// ```
  ///
  /// You can do :
  /// ```dart
  /// Future<Result<Value, Failure>> result;
  /// final value = await result.valueOrThrow;
  /// ```
  Future<ValueT> get valueOrThrow async {
    return (await this).valueOrThrow;
  }

  Future<ValueT?> get valueOrNull async {
    return (await this).valueOrNull;
  }
}

/// An operation's result.
/// Can be a success or a failure.
@immutable
abstract class Result<ValueT, FailureT extends Exception> {
  const factory Result.success(ValueT value) = ResultSuccess;
  const factory Result.failure(FailureT failure) = ResultFailure;

  ValueT? get valueOrNull;
  FailureT? get failureOrNull;

  bool get isValue;
  bool get isFailure;

  T when<T>({
    required T Function(ValueT value) success,
    required T Function(FailureT failure) failure,
  });

  T map<T>({
    required T Function(ResultSuccess<ValueT, FailureT> result) success,
    required T Function(ResultFailure<ValueT, FailureT> result) failure,
  });

  /// Returns the value if it is a success.
  /// Else, throws the error as an [Exception].
  ValueT get valueOrThrow;

  /// Transforms exceptions into [Failure.other].
  ///
  /// This is useful when
  ///    - expected error type is [Failure].
  ///    - you don't need to handle specific error cases.
  static Future<Result<ValueT, Failure>> guard<ValueT>(
    Future<ValueT> Function() run,
  ) async {
    try {
      return Result.success(await run());
    } on Failure catch (e) {
      return Result.failure(e);
    } catch (e, stack) {
      return Result.failure(
        Failure.other(
          cause: e,
          stack: stack,
        ),
      );
    }
  }
}

class ResultSuccess<ValueT, FailureT extends Exception>
    implements Result<ValueT, FailureT> {
  const ResultSuccess(this.value);

  final ValueT value;

  @override
  ValueT? get valueOrNull => value;

  @override
  FailureT? get failureOrNull => null;

  @override
  bool get isFailure => false;

  @override
  bool get isValue => true;

  @override
  ValueT get valueOrThrow => value;

  @override
  T when<T>({
    required T Function(ValueT value) success,
    required T Function(FailureT failure) failure,
  }) =>
      success(value);

  @override
  T map<T>({
    required T Function(ResultSuccess<ValueT, FailureT> result) success,
    required T Function(ResultFailure<ValueT, FailureT> result) failure,
  }) =>
      success(this);
}

class ResultFailure<ValueT, FailureT extends Exception>
    implements Result<ValueT, FailureT> {
  const ResultFailure(this.failure);

  final FailureT failure;

  @override
  ValueT? get valueOrNull => null;

  @override
  FailureT? get failureOrNull => failure;

  @override
  bool get isFailure => true;

  @override
  bool get isValue => false;

  @override
  ValueT get valueOrThrow => throw failure;

  @override
  T when<T>({
    required T Function(ValueT value) success,
    required T Function(FailureT failure) failure,
  }) =>
      failure(this.failure);

  @override
  T map<T>({
    required T Function(ResultSuccess<ValueT, FailureT> result) success,
    required T Function(ResultFailure<ValueT, FailureT> result) failure,
  }) =>
      failure(this);
}
