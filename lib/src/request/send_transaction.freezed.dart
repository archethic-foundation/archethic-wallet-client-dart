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
abstract class _$$SendTransactionResultImplCopyWith<$Res>
    implements $SendTransactionResultCopyWith<$Res> {
  factory _$$SendTransactionResultImplCopyWith(
          _$SendTransactionResultImpl value,
          $Res Function(_$SendTransactionResultImpl) then) =
      __$$SendTransactionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionAddress, int nbConfirmations, int maxConfirmations});
}

/// @nodoc
class __$$SendTransactionResultImplCopyWithImpl<$Res>
    extends _$SendTransactionResultCopyWithImpl<$Res,
        _$SendTransactionResultImpl>
    implements _$$SendTransactionResultImplCopyWith<$Res> {
  __$$SendTransactionResultImplCopyWithImpl(_$SendTransactionResultImpl _value,
      $Res Function(_$SendTransactionResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionAddress = null,
    Object? nbConfirmations = null,
    Object? maxConfirmations = null,
  }) {
    return _then(_$SendTransactionResultImpl(
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
class _$SendTransactionResultImpl extends _SendTransactionResult {
  const _$SendTransactionResultImpl(
      {required this.transactionAddress,
      required this.nbConfirmations,
      required this.maxConfirmations})
      : super._();

  factory _$SendTransactionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendTransactionResultImplFromJson(json);

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
            other is _$SendTransactionResultImpl &&
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
  _$$SendTransactionResultImplCopyWith<_$SendTransactionResultImpl>
      get copyWith => __$$SendTransactionResultImplCopyWithImpl<
          _$SendTransactionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendTransactionResultImplToJson(
      this,
    );
  }
}

abstract class _SendTransactionResult extends SendTransactionResult {
  const factory _SendTransactionResult(
      {required final String transactionAddress,
      required final int nbConfirmations,
      required final int maxConfirmations}) = _$SendTransactionResultImpl;
  const _SendTransactionResult._() : super._();

  factory _SendTransactionResult.fromJson(Map<String, dynamic> json) =
      _$SendTransactionResultImpl.fromJson;

  @override
  String get transactionAddress;
  @override
  int get nbConfirmations;
  @override
  int get maxConfirmations;
  @override
  @JsonKey(ignore: true)
  _$$SendTransactionResultImplCopyWith<_$SendTransactionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SendTransactionRequest _$SendTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return _SendTransactionRequest.fromJson(json);
}

/// @nodoc
mixin _$SendTransactionRequest {
  Data get data => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendTransactionRequestCopyWith<SendTransactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTransactionRequestCopyWith<$Res> {
  factory $SendTransactionRequestCopyWith(SendTransactionRequest value,
          $Res Function(SendTransactionRequest) then) =
      _$SendTransactionRequestCopyWithImpl<$Res, SendTransactionRequest>;
  @useResult
  $Res call({Data data, String type, int version});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$SendTransactionRequestCopyWithImpl<$Res,
        $Val extends SendTransactionRequest>
    implements $SendTransactionRequestCopyWith<$Res> {
  _$SendTransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendTransactionRequestImplCopyWith<$Res>
    implements $SendTransactionRequestCopyWith<$Res> {
  factory _$$SendTransactionRequestImplCopyWith(
          _$SendTransactionRequestImpl value,
          $Res Function(_$SendTransactionRequestImpl) then) =
      __$$SendTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data, String type, int version});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SendTransactionRequestImplCopyWithImpl<$Res>
    extends _$SendTransactionRequestCopyWithImpl<$Res,
        _$SendTransactionRequestImpl>
    implements _$$SendTransactionRequestImplCopyWith<$Res> {
  __$$SendTransactionRequestImplCopyWithImpl(
      _$SendTransactionRequestImpl _value,
      $Res Function(_$SendTransactionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_$SendTransactionRequestImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendTransactionRequestImpl extends _SendTransactionRequest {
  const _$SendTransactionRequestImpl(
      {required this.data, required this.type, required this.version})
      : super._();

  factory _$SendTransactionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendTransactionRequestImplFromJson(json);

  @override
  final Data data;
  @override
  final String type;
  @override
  final int version;

  @override
  String toString() {
    return 'SendTransactionRequest(data: $data, type: $type, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTransactionRequestImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, type, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTransactionRequestImplCopyWith<_$SendTransactionRequestImpl>
      get copyWith => __$$SendTransactionRequestImplCopyWithImpl<
          _$SendTransactionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendTransactionRequestImplToJson(
      this,
    );
  }
}

abstract class _SendTransactionRequest extends SendTransactionRequest {
  const factory _SendTransactionRequest(
      {required final Data data,
      required final String type,
      required final int version}) = _$SendTransactionRequestImpl;
  const _SendTransactionRequest._() : super._();

  factory _SendTransactionRequest.fromJson(Map<String, dynamic> json) =
      _$SendTransactionRequestImpl.fromJson;

  @override
  Data get data;
  @override
  String get type;
  @override
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$SendTransactionRequestImplCopyWith<_$SendTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
