// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignTransactionsResult _$SignTransactionsResultFromJson(
    Map<String, dynamic> json) {
  return _SignTransactionsResult.fromJson(json);
}

/// @nodoc
mixin _$SignTransactionsResult {
  List<SignTransactionsResultDetail> get signedTxs =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignTransactionsResultCopyWith<SignTransactionsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionsResultCopyWith<$Res> {
  factory $SignTransactionsResultCopyWith(SignTransactionsResult value,
          $Res Function(SignTransactionsResult) then) =
      _$SignTransactionsResultCopyWithImpl<$Res, SignTransactionsResult>;
  @useResult
  $Res call({List<SignTransactionsResultDetail> signedTxs});
}

/// @nodoc
class _$SignTransactionsResultCopyWithImpl<$Res,
        $Val extends SignTransactionsResult>
    implements $SignTransactionsResultCopyWith<$Res> {
  _$SignTransactionsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedTxs = null,
  }) {
    return _then(_value.copyWith(
      signedTxs: null == signedTxs
          ? _value.signedTxs
          : signedTxs // ignore: cast_nullable_to_non_nullable
              as List<SignTransactionsResultDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignTransactionsResultImplCopyWith<$Res>
    implements $SignTransactionsResultCopyWith<$Res> {
  factory _$$SignTransactionsResultImplCopyWith(
          _$SignTransactionsResultImpl value,
          $Res Function(_$SignTransactionsResultImpl) then) =
      __$$SignTransactionsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SignTransactionsResultDetail> signedTxs});
}

/// @nodoc
class __$$SignTransactionsResultImplCopyWithImpl<$Res>
    extends _$SignTransactionsResultCopyWithImpl<$Res,
        _$SignTransactionsResultImpl>
    implements _$$SignTransactionsResultImplCopyWith<$Res> {
  __$$SignTransactionsResultImplCopyWithImpl(
      _$SignTransactionsResultImpl _value,
      $Res Function(_$SignTransactionsResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedTxs = null,
  }) {
    return _then(_$SignTransactionsResultImpl(
      signedTxs: null == signedTxs
          ? _value._signedTxs
          : signedTxs // ignore: cast_nullable_to_non_nullable
              as List<SignTransactionsResultDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignTransactionsResultImpl extends _SignTransactionsResult {
  const _$SignTransactionsResultImpl(
      {required final List<SignTransactionsResultDetail> signedTxs})
      : _signedTxs = signedTxs,
        super._();

  factory _$SignTransactionsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignTransactionsResultImplFromJson(json);

  final List<SignTransactionsResultDetail> _signedTxs;
  @override
  List<SignTransactionsResultDetail> get signedTxs {
    if (_signedTxs is EqualUnmodifiableListView) return _signedTxs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signedTxs);
  }

  @override
  String toString() {
    return 'SignTransactionsResult(signedTxs: $signedTxs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionsResultImpl &&
            const DeepCollectionEquality()
                .equals(other._signedTxs, _signedTxs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_signedTxs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignTransactionsResultImplCopyWith<_$SignTransactionsResultImpl>
      get copyWith => __$$SignTransactionsResultImplCopyWithImpl<
          _$SignTransactionsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignTransactionsResultImplToJson(
      this,
    );
  }
}

abstract class _SignTransactionsResult extends SignTransactionsResult {
  const factory _SignTransactionsResult(
          {required final List<SignTransactionsResultDetail> signedTxs}) =
      _$SignTransactionsResultImpl;
  const _SignTransactionsResult._() : super._();

  factory _SignTransactionsResult.fromJson(Map<String, dynamic> json) =
      _$SignTransactionsResultImpl.fromJson;

  @override
  List<SignTransactionsResultDetail> get signedTxs;
  @override
  @JsonKey(ignore: true)
  _$$SignTransactionsResultImplCopyWith<_$SignTransactionsResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignTransactionsResultDetail _$SignTransactionsResultDetailFromJson(
    Map<String, dynamic> json) {
  return _SignTransactionsResultDetail.fromJson(json);
}

/// @nodoc
mixin _$SignTransactionsResultDetail {
  /// Address: hash of the new generated public key for the given transaction
  String get address => throw _privateConstructorUsedError;

  /// Previous generated public key matching the previous signature
  String get previousPublicKey => throw _privateConstructorUsedError;

  /// Signature from the previous public key
  String get previousSignature => throw _privateConstructorUsedError;

  /// Signature from the device which originated the transaction (used in the Proof of work)
  String get originSignature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignTransactionsResultDetailCopyWith<SignTransactionsResultDetail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionsResultDetailCopyWith<$Res> {
  factory $SignTransactionsResultDetailCopyWith(
          SignTransactionsResultDetail value,
          $Res Function(SignTransactionsResultDetail) then) =
      _$SignTransactionsResultDetailCopyWithImpl<$Res,
          SignTransactionsResultDetail>;
  @useResult
  $Res call(
      {String address,
      String previousPublicKey,
      String previousSignature,
      String originSignature});
}

/// @nodoc
class _$SignTransactionsResultDetailCopyWithImpl<$Res,
        $Val extends SignTransactionsResultDetail>
    implements $SignTransactionsResultDetailCopyWith<$Res> {
  _$SignTransactionsResultDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? previousPublicKey = null,
    Object? previousSignature = null,
    Object? originSignature = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      previousPublicKey: null == previousPublicKey
          ? _value.previousPublicKey
          : previousPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      previousSignature: null == previousSignature
          ? _value.previousSignature
          : previousSignature // ignore: cast_nullable_to_non_nullable
              as String,
      originSignature: null == originSignature
          ? _value.originSignature
          : originSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignTransactionsResultDetailImplCopyWith<$Res>
    implements $SignTransactionsResultDetailCopyWith<$Res> {
  factory _$$SignTransactionsResultDetailImplCopyWith(
          _$SignTransactionsResultDetailImpl value,
          $Res Function(_$SignTransactionsResultDetailImpl) then) =
      __$$SignTransactionsResultDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String previousPublicKey,
      String previousSignature,
      String originSignature});
}

/// @nodoc
class __$$SignTransactionsResultDetailImplCopyWithImpl<$Res>
    extends _$SignTransactionsResultDetailCopyWithImpl<$Res,
        _$SignTransactionsResultDetailImpl>
    implements _$$SignTransactionsResultDetailImplCopyWith<$Res> {
  __$$SignTransactionsResultDetailImplCopyWithImpl(
      _$SignTransactionsResultDetailImpl _value,
      $Res Function(_$SignTransactionsResultDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? previousPublicKey = null,
    Object? previousSignature = null,
    Object? originSignature = null,
  }) {
    return _then(_$SignTransactionsResultDetailImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      previousPublicKey: null == previousPublicKey
          ? _value.previousPublicKey
          : previousPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      previousSignature: null == previousSignature
          ? _value.previousSignature
          : previousSignature // ignore: cast_nullable_to_non_nullable
              as String,
      originSignature: null == originSignature
          ? _value.originSignature
          : originSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignTransactionsResultDetailImpl extends _SignTransactionsResultDetail {
  const _$SignTransactionsResultDetailImpl(
      {required this.address,
      required this.previousPublicKey,
      required this.previousSignature,
      required this.originSignature})
      : super._();

  factory _$SignTransactionsResultDetailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SignTransactionsResultDetailImplFromJson(json);

  /// Address: hash of the new generated public key for the given transaction
  @override
  final String address;

  /// Previous generated public key matching the previous signature
  @override
  final String previousPublicKey;

  /// Signature from the previous public key
  @override
  final String previousSignature;

  /// Signature from the device which originated the transaction (used in the Proof of work)
  @override
  final String originSignature;

  @override
  String toString() {
    return 'SignTransactionsResultDetail(address: $address, previousPublicKey: $previousPublicKey, previousSignature: $previousSignature, originSignature: $originSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionsResultDetailImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.previousPublicKey, previousPublicKey) ||
                other.previousPublicKey == previousPublicKey) &&
            (identical(other.previousSignature, previousSignature) ||
                other.previousSignature == previousSignature) &&
            (identical(other.originSignature, originSignature) ||
                other.originSignature == originSignature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, previousPublicKey,
      previousSignature, originSignature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignTransactionsResultDetailImplCopyWith<
          _$SignTransactionsResultDetailImpl>
      get copyWith => __$$SignTransactionsResultDetailImplCopyWithImpl<
          _$SignTransactionsResultDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignTransactionsResultDetailImplToJson(
      this,
    );
  }
}

abstract class _SignTransactionsResultDetail
    extends SignTransactionsResultDetail {
  const factory _SignTransactionsResultDetail(
          {required final String address,
          required final String previousPublicKey,
          required final String previousSignature,
          required final String originSignature}) =
      _$SignTransactionsResultDetailImpl;
  const _SignTransactionsResultDetail._() : super._();

  factory _SignTransactionsResultDetail.fromJson(Map<String, dynamic> json) =
      _$SignTransactionsResultDetailImpl.fromJson;

  @override

  /// Address: hash of the new generated public key for the given transaction
  String get address;
  @override

  /// Previous generated public key matching the previous signature
  String get previousPublicKey;
  @override

  /// Signature from the previous public key
  String get previousSignature;
  @override

  /// Signature from the device which originated the transaction (used in the Proof of work)
  String get originSignature;
  @override
  @JsonKey(ignore: true)
  _$$SignTransactionsResultDetailImplCopyWith<
          _$SignTransactionsResultDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
