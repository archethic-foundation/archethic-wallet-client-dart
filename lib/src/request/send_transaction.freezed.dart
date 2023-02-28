// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendTransactionResult _$SendTransactionResultFromJson(
    Map<String, dynamic> json) {
  return _SendTransactionResult.fromJson(json);
}

/// @nodoc
mixin _$SendTransactionResult {
  String get transactionAddress => throw _privateConstructorUsedError;
  int get nbConfirmations => throw _privateConstructorUsedError;
  int get maxConfirmations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendTransactionResultCopyWith<SendTransactionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTransactionResultCopyWith<$Res> {
  factory $SendTransactionResultCopyWith(SendTransactionResult value,
          $Res Function(SendTransactionResult) then) =
      _$SendTransactionResultCopyWithImpl<$Res, SendTransactionResult>;
  @useResult
  $Res call(
      {String transactionAddress, int nbConfirmations, int maxConfirmations});
}

/// @nodoc
class _$SendTransactionResultCopyWithImpl<$Res,
        $Val extends SendTransactionResult>
    implements $SendTransactionResultCopyWith<$Res> {
  _$SendTransactionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionAddress = null,
    Object? nbConfirmations = null,
    Object? maxConfirmations = null,
  }) {
    return _then(_value.copyWith(
      transactionAddress: null == transactionAddress
          ? _value.transactionAddress
          : transactionAddress // ignore: cast_nullable_to_non_nullable
              as String,
      nbConfirmations: null == nbConfirmations
          ? _value.nbConfirmations
          : nbConfirmations // ignore: cast_nullable_to_non_nullable
              as int,
      maxConfirmations: null == maxConfirmations
          ? _value.maxConfirmations
          : maxConfirmations // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendTransactionResultCopyWith<$Res>
    implements $SendTransactionResultCopyWith<$Res> {
  factory _$$_SendTransactionResultCopyWith(_$_SendTransactionResult value,
          $Res Function(_$_SendTransactionResult) then) =
      __$$_SendTransactionResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionAddress, int nbConfirmations, int maxConfirmations});
}

/// @nodoc
class __$$_SendTransactionResultCopyWithImpl<$Res>
    extends _$SendTransactionResultCopyWithImpl<$Res, _$_SendTransactionResult>
    implements _$$_SendTransactionResultCopyWith<$Res> {
  __$$_SendTransactionResultCopyWithImpl(_$_SendTransactionResult _value,
      $Res Function(_$_SendTransactionResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionAddress = null,
    Object? nbConfirmations = null,
    Object? maxConfirmations = null,
  }) {
    return _then(_$_SendTransactionResult(
      transactionAddress: null == transactionAddress
          ? _value.transactionAddress
          : transactionAddress // ignore: cast_nullable_to_non_nullable
              as String,
      nbConfirmations: null == nbConfirmations
          ? _value.nbConfirmations
          : nbConfirmations // ignore: cast_nullable_to_non_nullable
              as int,
      maxConfirmations: null == maxConfirmations
          ? _value.maxConfirmations
          : maxConfirmations // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendTransactionResult extends _SendTransactionResult {
  const _$_SendTransactionResult(
      {required this.transactionAddress,
      required this.nbConfirmations,
      required this.maxConfirmations})
      : super._();

  factory _$_SendTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$$_SendTransactionResultFromJson(json);

  @override
  final String transactionAddress;
  @override
  final int nbConfirmations;
  @override
  final int maxConfirmations;

  @override
  String toString() {
    return 'SendTransactionResult(transactionAddress: $transactionAddress, nbConfirmations: $nbConfirmations, maxConfirmations: $maxConfirmations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendTransactionResult &&
            (identical(other.transactionAddress, transactionAddress) ||
                other.transactionAddress == transactionAddress) &&
            (identical(other.nbConfirmations, nbConfirmations) ||
                other.nbConfirmations == nbConfirmations) &&
            (identical(other.maxConfirmations, maxConfirmations) ||
                other.maxConfirmations == maxConfirmations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, transactionAddress, nbConfirmations, maxConfirmations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendTransactionResultCopyWith<_$_SendTransactionResult> get copyWith =>
      __$$_SendTransactionResultCopyWithImpl<_$_SendTransactionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendTransactionResultToJson(
      this,
    );
  }
}

abstract class _SendTransactionResult extends SendTransactionResult {
  const factory _SendTransactionResult(
      {required final String transactionAddress,
      required final int nbConfirmations,
      required final int maxConfirmations}) = _$_SendTransactionResult;
  const _SendTransactionResult._() : super._();

  factory _SendTransactionResult.fromJson(Map<String, dynamic> json) =
      _$_SendTransactionResult.fromJson;

  @override
  String get transactionAddress;
  @override
  int get nbConfirmations;
  @override
  int get maxConfirmations;
  @override
  @JsonKey(ignore: true)
  _$$_SendTransactionResultCopyWith<_$_SendTransactionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
