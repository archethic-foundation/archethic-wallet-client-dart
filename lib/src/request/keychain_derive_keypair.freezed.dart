// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keychain_derive_keypair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeychainDeriveKeypairResult _$KeychainDeriveKeypairResultFromJson(
    Map<String, dynamic> json) {
  return _KeychainDeriveKeypairResult.fromJson(json);
}

/// @nodoc
mixin _$KeychainDeriveKeypairResult {
  String get publicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeychainDeriveKeypairResultCopyWith<KeychainDeriveKeypairResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeychainDeriveKeypairResultCopyWith<$Res> {
  factory $KeychainDeriveKeypairResultCopyWith(
          KeychainDeriveKeypairResult value,
          $Res Function(KeychainDeriveKeypairResult) then) =
      _$KeychainDeriveKeypairResultCopyWithImpl<$Res,
          KeychainDeriveKeypairResult>;
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class _$KeychainDeriveKeypairResultCopyWithImpl<$Res,
        $Val extends KeychainDeriveKeypairResult>
    implements $KeychainDeriveKeypairResultCopyWith<$Res> {
  _$KeychainDeriveKeypairResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeychainDeriveKeypairResultCopyWith<$Res>
    implements $KeychainDeriveKeypairResultCopyWith<$Res> {
  factory _$$_KeychainDeriveKeypairResultCopyWith(
          _$_KeychainDeriveKeypairResult value,
          $Res Function(_$_KeychainDeriveKeypairResult) then) =
      __$$_KeychainDeriveKeypairResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$_KeychainDeriveKeypairResultCopyWithImpl<$Res>
    extends _$KeychainDeriveKeypairResultCopyWithImpl<$Res,
        _$_KeychainDeriveKeypairResult>
    implements _$$_KeychainDeriveKeypairResultCopyWith<$Res> {
  __$$_KeychainDeriveKeypairResultCopyWithImpl(
      _$_KeychainDeriveKeypairResult _value,
      $Res Function(_$_KeychainDeriveKeypairResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$_KeychainDeriveKeypairResult(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeychainDeriveKeypairResult extends _KeychainDeriveKeypairResult {
  const _$_KeychainDeriveKeypairResult({required this.publicKey}) : super._();

  factory _$_KeychainDeriveKeypairResult.fromJson(Map<String, dynamic> json) =>
      _$$_KeychainDeriveKeypairResultFromJson(json);

  @override
  final String publicKey;

  @override
  String toString() {
    return 'KeychainDeriveKeypairResult(publicKey: $publicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeychainDeriveKeypairResult &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeychainDeriveKeypairResultCopyWith<_$_KeychainDeriveKeypairResult>
      get copyWith => __$$_KeychainDeriveKeypairResultCopyWithImpl<
          _$_KeychainDeriveKeypairResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeychainDeriveKeypairResultToJson(
      this,
    );
  }
}

abstract class _KeychainDeriveKeypairResult
    extends KeychainDeriveKeypairResult {
  const factory _KeychainDeriveKeypairResult(
      {required final String publicKey}) = _$_KeychainDeriveKeypairResult;
  const _KeychainDeriveKeypairResult._() : super._();

  factory _KeychainDeriveKeypairResult.fromJson(Map<String, dynamic> json) =
      _$_KeychainDeriveKeypairResult.fromJson;

  @override
  String get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$_KeychainDeriveKeypairResultCopyWith<_$_KeychainDeriveKeypairResult>
      get copyWith => throw _privateConstructorUsedError;
}
