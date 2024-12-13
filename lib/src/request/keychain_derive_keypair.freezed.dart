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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeychainDeriveKeypairResult _$KeychainDeriveKeypairResultFromJson(
    Map<String, dynamic> json) {
  return _KeychainDeriveKeypairResult.fromJson(json);
}

/// @nodoc
mixin _$KeychainDeriveKeypairResult {
  String get publicKey => throw _privateConstructorUsedError;

  /// Serializes this KeychainDeriveKeypairResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeychainDeriveKeypairResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of KeychainDeriveKeypairResult
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$KeychainDeriveKeypairResultImplCopyWith<$Res>
    implements $KeychainDeriveKeypairResultCopyWith<$Res> {
  factory _$$KeychainDeriveKeypairResultImplCopyWith(
          _$KeychainDeriveKeypairResultImpl value,
          $Res Function(_$KeychainDeriveKeypairResultImpl) then) =
      __$$KeychainDeriveKeypairResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$KeychainDeriveKeypairResultImplCopyWithImpl<$Res>
    extends _$KeychainDeriveKeypairResultCopyWithImpl<$Res,
        _$KeychainDeriveKeypairResultImpl>
    implements _$$KeychainDeriveKeypairResultImplCopyWith<$Res> {
  __$$KeychainDeriveKeypairResultImplCopyWithImpl(
      _$KeychainDeriveKeypairResultImpl _value,
      $Res Function(_$KeychainDeriveKeypairResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeychainDeriveKeypairResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$KeychainDeriveKeypairResultImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeychainDeriveKeypairResultImpl extends _KeychainDeriveKeypairResult {
  const _$KeychainDeriveKeypairResultImpl({required this.publicKey})
      : super._();

  factory _$KeychainDeriveKeypairResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KeychainDeriveKeypairResultImplFromJson(json);

  @override
  final String publicKey;

  @override
  String toString() {
    return 'KeychainDeriveKeypairResult(publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeychainDeriveKeypairResultImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  /// Create a copy of KeychainDeriveKeypairResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeychainDeriveKeypairResultImplCopyWith<_$KeychainDeriveKeypairResultImpl>
      get copyWith => __$$KeychainDeriveKeypairResultImplCopyWithImpl<
          _$KeychainDeriveKeypairResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeychainDeriveKeypairResultImplToJson(
      this,
    );
  }
}

abstract class _KeychainDeriveKeypairResult
    extends KeychainDeriveKeypairResult {
  const factory _KeychainDeriveKeypairResult(
      {required final String publicKey}) = _$KeychainDeriveKeypairResultImpl;
  const _KeychainDeriveKeypairResult._() : super._();

  factory _KeychainDeriveKeypairResult.fromJson(Map<String, dynamic> json) =
      _$KeychainDeriveKeypairResultImpl.fromJson;

  @override
  String get publicKey;

  /// Create a copy of KeychainDeriveKeypairResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeychainDeriveKeypairResultImplCopyWith<_$KeychainDeriveKeypairResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

KeychainDeriveKeypairRequest _$KeychainDeriveKeypairRequestFromJson(
    Map<String, dynamic> json) {
  return _KeychainDeriveKeypairRequest.fromJson(json);
}

/// @nodoc
mixin _$KeychainDeriveKeypairRequest {
  String get serviceName => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get pathSuffix => throw _privateConstructorUsedError;

  /// Serializes this KeychainDeriveKeypairRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeychainDeriveKeypairRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeychainDeriveKeypairRequestCopyWith<KeychainDeriveKeypairRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeychainDeriveKeypairRequestCopyWith<$Res> {
  factory $KeychainDeriveKeypairRequestCopyWith(
          KeychainDeriveKeypairRequest value,
          $Res Function(KeychainDeriveKeypairRequest) then) =
      _$KeychainDeriveKeypairRequestCopyWithImpl<$Res,
          KeychainDeriveKeypairRequest>;
  @useResult
  $Res call({String serviceName, int index, String pathSuffix});
}

/// @nodoc
class _$KeychainDeriveKeypairRequestCopyWithImpl<$Res,
        $Val extends KeychainDeriveKeypairRequest>
    implements $KeychainDeriveKeypairRequestCopyWith<$Res> {
  _$KeychainDeriveKeypairRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeychainDeriveKeypairRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? index = null,
    Object? pathSuffix = null,
  }) {
    return _then(_value.copyWith(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pathSuffix: null == pathSuffix
          ? _value.pathSuffix
          : pathSuffix // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeychainDeriveKeypairRequestImplCopyWith<$Res>
    implements $KeychainDeriveKeypairRequestCopyWith<$Res> {
  factory _$$KeychainDeriveKeypairRequestImplCopyWith(
          _$KeychainDeriveKeypairRequestImpl value,
          $Res Function(_$KeychainDeriveKeypairRequestImpl) then) =
      __$$KeychainDeriveKeypairRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String serviceName, int index, String pathSuffix});
}

/// @nodoc
class __$$KeychainDeriveKeypairRequestImplCopyWithImpl<$Res>
    extends _$KeychainDeriveKeypairRequestCopyWithImpl<$Res,
        _$KeychainDeriveKeypairRequestImpl>
    implements _$$KeychainDeriveKeypairRequestImplCopyWith<$Res> {
  __$$KeychainDeriveKeypairRequestImplCopyWithImpl(
      _$KeychainDeriveKeypairRequestImpl _value,
      $Res Function(_$KeychainDeriveKeypairRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeychainDeriveKeypairRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? index = null,
    Object? pathSuffix = null,
  }) {
    return _then(_$KeychainDeriveKeypairRequestImpl(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pathSuffix: null == pathSuffix
          ? _value.pathSuffix
          : pathSuffix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeychainDeriveKeypairRequestImpl extends _KeychainDeriveKeypairRequest {
  const _$KeychainDeriveKeypairRequestImpl(
      {required this.serviceName, this.index = 0, this.pathSuffix = ''})
      : super._();

  factory _$KeychainDeriveKeypairRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KeychainDeriveKeypairRequestImplFromJson(json);

  @override
  final String serviceName;
  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final String pathSuffix;

  @override
  String toString() {
    return 'KeychainDeriveKeypairRequest(serviceName: $serviceName, index: $index, pathSuffix: $pathSuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeychainDeriveKeypairRequestImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.pathSuffix, pathSuffix) ||
                other.pathSuffix == pathSuffix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, serviceName, index, pathSuffix);

  /// Create a copy of KeychainDeriveKeypairRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeychainDeriveKeypairRequestImplCopyWith<
          _$KeychainDeriveKeypairRequestImpl>
      get copyWith => __$$KeychainDeriveKeypairRequestImplCopyWithImpl<
          _$KeychainDeriveKeypairRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeychainDeriveKeypairRequestImplToJson(
      this,
    );
  }
}

abstract class _KeychainDeriveKeypairRequest
    extends KeychainDeriveKeypairRequest {
  const factory _KeychainDeriveKeypairRequest(
      {required final String serviceName,
      final int index,
      final String pathSuffix}) = _$KeychainDeriveKeypairRequestImpl;
  const _KeychainDeriveKeypairRequest._() : super._();

  factory _KeychainDeriveKeypairRequest.fromJson(Map<String, dynamic> json) =
      _$KeychainDeriveKeypairRequestImpl.fromJson;

  @override
  String get serviceName;
  @override
  int get index;
  @override
  String get pathSuffix;

  /// Create a copy of KeychainDeriveKeypairRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeychainDeriveKeypairRequestImplCopyWith<
          _$KeychainDeriveKeypairRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
