// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_current_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCurrentAccountResult _$GetCurrentAccountResultFromJson(
    Map<String, dynamic> json) {
  return _GetCurrentAccountResult.fromJson(json);
}

/// @nodoc
mixin _$GetCurrentAccountResult {
  String get shortName => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String get genesisAddress => throw _privateConstructorUsedError;

  /// Serializes this GetCurrentAccountResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetCurrentAccountResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCurrentAccountResultCopyWith<GetCurrentAccountResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentAccountResultCopyWith<$Res> {
  factory $GetCurrentAccountResultCopyWith(GetCurrentAccountResult value,
          $Res Function(GetCurrentAccountResult) then) =
      _$GetCurrentAccountResultCopyWithImpl<$Res, GetCurrentAccountResult>;
  @useResult
  $Res call({String shortName, String serviceName, String genesisAddress});
}

/// @nodoc
class _$GetCurrentAccountResultCopyWithImpl<$Res,
        $Val extends GetCurrentAccountResult>
    implements $GetCurrentAccountResultCopyWith<$Res> {
  _$GetCurrentAccountResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCurrentAccountResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortName = null,
    Object? serviceName = null,
    Object? genesisAddress = null,
  }) {
    return _then(_value.copyWith(
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      genesisAddress: null == genesisAddress
          ? _value.genesisAddress
          : genesisAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCurrentAccountResultImplCopyWith<$Res>
    implements $GetCurrentAccountResultCopyWith<$Res> {
  factory _$$GetCurrentAccountResultImplCopyWith(
          _$GetCurrentAccountResultImpl value,
          $Res Function(_$GetCurrentAccountResultImpl) then) =
      __$$GetCurrentAccountResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shortName, String serviceName, String genesisAddress});
}

/// @nodoc
class __$$GetCurrentAccountResultImplCopyWithImpl<$Res>
    extends _$GetCurrentAccountResultCopyWithImpl<$Res,
        _$GetCurrentAccountResultImpl>
    implements _$$GetCurrentAccountResultImplCopyWith<$Res> {
  __$$GetCurrentAccountResultImplCopyWithImpl(
      _$GetCurrentAccountResultImpl _value,
      $Res Function(_$GetCurrentAccountResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCurrentAccountResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortName = null,
    Object? serviceName = null,
    Object? genesisAddress = null,
  }) {
    return _then(_$GetCurrentAccountResultImpl(
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      genesisAddress: null == genesisAddress
          ? _value.genesisAddress
          : genesisAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCurrentAccountResultImpl extends _GetCurrentAccountResult {
  const _$GetCurrentAccountResultImpl(
      {required this.shortName,
      required this.serviceName,
      required this.genesisAddress})
      : super._();

  factory _$GetCurrentAccountResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCurrentAccountResultImplFromJson(json);

  @override
  final String shortName;
  @override
  final String serviceName;
  @override
  final String genesisAddress;

  @override
  String toString() {
    return 'GetCurrentAccountResult(shortName: $shortName, serviceName: $serviceName, genesisAddress: $genesisAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentAccountResultImpl &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.genesisAddress, genesisAddress) ||
                other.genesisAddress == genesisAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shortName, serviceName, genesisAddress);

  /// Create a copy of GetCurrentAccountResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentAccountResultImplCopyWith<_$GetCurrentAccountResultImpl>
      get copyWith => __$$GetCurrentAccountResultImplCopyWithImpl<
          _$GetCurrentAccountResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCurrentAccountResultImplToJson(
      this,
    );
  }
}

abstract class _GetCurrentAccountResult extends GetCurrentAccountResult {
  const factory _GetCurrentAccountResult(
      {required final String shortName,
      required final String serviceName,
      required final String genesisAddress}) = _$GetCurrentAccountResultImpl;
  const _GetCurrentAccountResult._() : super._();

  factory _GetCurrentAccountResult.fromJson(Map<String, dynamic> json) =
      _$GetCurrentAccountResultImpl.fromJson;

  @override
  String get shortName;
  @override
  String get serviceName;
  @override
  String get genesisAddress;

  /// Create a copy of GetCurrentAccountResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCurrentAccountResultImplCopyWith<_$GetCurrentAccountResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetCurrentAccountRequest _$GetCurrentAccountRequestFromJson(
    Map<String, dynamic> json) {
  return _GetCurrentAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$GetCurrentAccountRequest {
  /// Serializes this GetCurrentAccountRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentAccountRequestCopyWith<$Res> {
  factory $GetCurrentAccountRequestCopyWith(GetCurrentAccountRequest value,
          $Res Function(GetCurrentAccountRequest) then) =
      _$GetCurrentAccountRequestCopyWithImpl<$Res, GetCurrentAccountRequest>;
}

/// @nodoc
class _$GetCurrentAccountRequestCopyWithImpl<$Res,
        $Val extends GetCurrentAccountRequest>
    implements $GetCurrentAccountRequestCopyWith<$Res> {
  _$GetCurrentAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCurrentAccountRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCurrentAccountRequestImplCopyWith<$Res> {
  factory _$$GetCurrentAccountRequestImplCopyWith(
          _$GetCurrentAccountRequestImpl value,
          $Res Function(_$GetCurrentAccountRequestImpl) then) =
      __$$GetCurrentAccountRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentAccountRequestImplCopyWithImpl<$Res>
    extends _$GetCurrentAccountRequestCopyWithImpl<$Res,
        _$GetCurrentAccountRequestImpl>
    implements _$$GetCurrentAccountRequestImplCopyWith<$Res> {
  __$$GetCurrentAccountRequestImplCopyWithImpl(
      _$GetCurrentAccountRequestImpl _value,
      $Res Function(_$GetCurrentAccountRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCurrentAccountRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GetCurrentAccountRequestImpl extends _GetCurrentAccountRequest {
  const _$GetCurrentAccountRequestImpl() : super._();

  factory _$GetCurrentAccountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCurrentAccountRequestImplFromJson(json);

  @override
  String toString() {
    return 'GetCurrentAccountRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentAccountRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCurrentAccountRequestImplToJson(
      this,
    );
  }
}

abstract class _GetCurrentAccountRequest extends GetCurrentAccountRequest {
  const factory _GetCurrentAccountRequest() = _$GetCurrentAccountRequestImpl;
  const _GetCurrentAccountRequest._() : super._();

  factory _GetCurrentAccountRequest.fromJson(Map<String, dynamic> json) =
      _$GetCurrentAccountRequestImpl.fromJson;
}
