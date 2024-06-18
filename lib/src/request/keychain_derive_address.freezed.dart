// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keychain_derive_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeychainDeriveAddressResult _$KeychainDeriveAddressResultFromJson(
    Map<String, dynamic> json) {
  return _KeychainDeriveAddressResult.fromJson(json);
}

/// @nodoc
mixin _$KeychainDeriveAddressResult {
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeychainDeriveAddressResultCopyWith<KeychainDeriveAddressResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeychainDeriveAddressResultCopyWith<$Res> {
  factory $KeychainDeriveAddressResultCopyWith(
          KeychainDeriveAddressResult value,
          $Res Function(KeychainDeriveAddressResult) then) =
      _$KeychainDeriveAddressResultCopyWithImpl<$Res,
          KeychainDeriveAddressResult>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class _$KeychainDeriveAddressResultCopyWithImpl<$Res,
        $Val extends KeychainDeriveAddressResult>
    implements $KeychainDeriveAddressResultCopyWith<$Res> {
  _$KeychainDeriveAddressResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeychainDeriveAddressResultImplCopyWith<$Res>
    implements $KeychainDeriveAddressResultCopyWith<$Res> {
  factory _$$KeychainDeriveAddressResultImplCopyWith(
          _$KeychainDeriveAddressResultImpl value,
          $Res Function(_$KeychainDeriveAddressResultImpl) then) =
      __$$KeychainDeriveAddressResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$KeychainDeriveAddressResultImplCopyWithImpl<$Res>
    extends _$KeychainDeriveAddressResultCopyWithImpl<$Res,
        _$KeychainDeriveAddressResultImpl>
    implements _$$KeychainDeriveAddressResultImplCopyWith<$Res> {
  __$$KeychainDeriveAddressResultImplCopyWithImpl(
      _$KeychainDeriveAddressResultImpl _value,
      $Res Function(_$KeychainDeriveAddressResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$KeychainDeriveAddressResultImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeychainDeriveAddressResultImpl extends _KeychainDeriveAddressResult {
  const _$KeychainDeriveAddressResultImpl({required this.address}) : super._();

  factory _$KeychainDeriveAddressResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KeychainDeriveAddressResultImplFromJson(json);

  @override
  final String address;

  @override
  String toString() {
    return 'KeychainDeriveAddressResult(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeychainDeriveAddressResultImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeychainDeriveAddressResultImplCopyWith<_$KeychainDeriveAddressResultImpl>
      get copyWith => __$$KeychainDeriveAddressResultImplCopyWithImpl<
          _$KeychainDeriveAddressResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeychainDeriveAddressResultImplToJson(
      this,
    );
  }
}

abstract class _KeychainDeriveAddressResult
    extends KeychainDeriveAddressResult {
  const factory _KeychainDeriveAddressResult({required final String address}) =
      _$KeychainDeriveAddressResultImpl;
  const _KeychainDeriveAddressResult._() : super._();

  factory _KeychainDeriveAddressResult.fromJson(Map<String, dynamic> json) =
      _$KeychainDeriveAddressResultImpl.fromJson;

  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$KeychainDeriveAddressResultImplCopyWith<_$KeychainDeriveAddressResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

KeychainDeriveAddressRequest _$KeychainDeriveAddressRequestFromJson(
    Map<String, dynamic> json) {
  return _KeychainDeriveAddressRequest.fromJson(json);
}

/// @nodoc
mixin _$KeychainDeriveAddressRequest {
  String get serviceName => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get pathSuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeychainDeriveAddressRequestCopyWith<KeychainDeriveAddressRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeychainDeriveAddressRequestCopyWith<$Res> {
  factory $KeychainDeriveAddressRequestCopyWith(
          KeychainDeriveAddressRequest value,
          $Res Function(KeychainDeriveAddressRequest) then) =
      _$KeychainDeriveAddressRequestCopyWithImpl<$Res,
          KeychainDeriveAddressRequest>;
  @useResult
  $Res call({String serviceName, int index, String pathSuffix});
}

/// @nodoc
class _$KeychainDeriveAddressRequestCopyWithImpl<$Res,
        $Val extends KeychainDeriveAddressRequest>
    implements $KeychainDeriveAddressRequestCopyWith<$Res> {
  _$KeychainDeriveAddressRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$KeychainDeriveAddressRequestImplCopyWith<$Res>
    implements $KeychainDeriveAddressRequestCopyWith<$Res> {
  factory _$$KeychainDeriveAddressRequestImplCopyWith(
          _$KeychainDeriveAddressRequestImpl value,
          $Res Function(_$KeychainDeriveAddressRequestImpl) then) =
      __$$KeychainDeriveAddressRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String serviceName, int index, String pathSuffix});
}

/// @nodoc
class __$$KeychainDeriveAddressRequestImplCopyWithImpl<$Res>
    extends _$KeychainDeriveAddressRequestCopyWithImpl<$Res,
        _$KeychainDeriveAddressRequestImpl>
    implements _$$KeychainDeriveAddressRequestImplCopyWith<$Res> {
  __$$KeychainDeriveAddressRequestImplCopyWithImpl(
      _$KeychainDeriveAddressRequestImpl _value,
      $Res Function(_$KeychainDeriveAddressRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? index = null,
    Object? pathSuffix = null,
  }) {
    return _then(_$KeychainDeriveAddressRequestImpl(
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
class _$KeychainDeriveAddressRequestImpl extends _KeychainDeriveAddressRequest {
  const _$KeychainDeriveAddressRequestImpl(
      {required this.serviceName, this.index = 0, this.pathSuffix = ''})
      : super._();

  factory _$KeychainDeriveAddressRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KeychainDeriveAddressRequestImplFromJson(json);

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
    return 'KeychainDeriveAddressRequest(serviceName: $serviceName, index: $index, pathSuffix: $pathSuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeychainDeriveAddressRequestImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.pathSuffix, pathSuffix) ||
                other.pathSuffix == pathSuffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serviceName, index, pathSuffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeychainDeriveAddressRequestImplCopyWith<
          _$KeychainDeriveAddressRequestImpl>
      get copyWith => __$$KeychainDeriveAddressRequestImplCopyWithImpl<
          _$KeychainDeriveAddressRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeychainDeriveAddressRequestImplToJson(
      this,
    );
  }
}

abstract class _KeychainDeriveAddressRequest
    extends KeychainDeriveAddressRequest {
  const factory _KeychainDeriveAddressRequest(
      {required final String serviceName,
      final int index,
      final String pathSuffix}) = _$KeychainDeriveAddressRequestImpl;
  const _KeychainDeriveAddressRequest._() : super._();

  factory _KeychainDeriveAddressRequest.fromJson(Map<String, dynamic> json) =
      _$KeychainDeriveAddressRequestImpl.fromJson;

  @override
  String get serviceName;
  @override
  int get index;
  @override
  String get pathSuffix;
  @override
  @JsonKey(ignore: true)
  _$$KeychainDeriveAddressRequestImplCopyWith<
          _$KeychainDeriveAddressRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
