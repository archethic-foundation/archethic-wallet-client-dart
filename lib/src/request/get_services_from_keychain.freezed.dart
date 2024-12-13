// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_services_from_keychain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetServicesFromKeychainResult _$GetServicesFromKeychainResultFromJson(
    Map<String, dynamic> json) {
  return _GetServicesFromKeychainResult.fromJson(json);
}

/// @nodoc
mixin _$GetServicesFromKeychainResult {
  List<Service> get services => throw _privateConstructorUsedError;

  /// Serializes this GetServicesFromKeychainResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetServicesFromKeychainResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetServicesFromKeychainResultCopyWith<GetServicesFromKeychainResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetServicesFromKeychainResultCopyWith<$Res> {
  factory $GetServicesFromKeychainResultCopyWith(
          GetServicesFromKeychainResult value,
          $Res Function(GetServicesFromKeychainResult) then) =
      _$GetServicesFromKeychainResultCopyWithImpl<$Res,
          GetServicesFromKeychainResult>;
  @useResult
  $Res call({List<Service> services});
}

/// @nodoc
class _$GetServicesFromKeychainResultCopyWithImpl<$Res,
        $Val extends GetServicesFromKeychainResult>
    implements $GetServicesFromKeychainResultCopyWith<$Res> {
  _$GetServicesFromKeychainResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetServicesFromKeychainResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetServicesFromKeychainResultImplCopyWith<$Res>
    implements $GetServicesFromKeychainResultCopyWith<$Res> {
  factory _$$GetServicesFromKeychainResultImplCopyWith(
          _$GetServicesFromKeychainResultImpl value,
          $Res Function(_$GetServicesFromKeychainResultImpl) then) =
      __$$GetServicesFromKeychainResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Service> services});
}

/// @nodoc
class __$$GetServicesFromKeychainResultImplCopyWithImpl<$Res>
    extends _$GetServicesFromKeychainResultCopyWithImpl<$Res,
        _$GetServicesFromKeychainResultImpl>
    implements _$$GetServicesFromKeychainResultImplCopyWith<$Res> {
  __$$GetServicesFromKeychainResultImplCopyWithImpl(
      _$GetServicesFromKeychainResultImpl _value,
      $Res Function(_$GetServicesFromKeychainResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetServicesFromKeychainResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$GetServicesFromKeychainResultImpl(
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetServicesFromKeychainResultImpl
    extends _GetServicesFromKeychainResult {
  const _$GetServicesFromKeychainResultImpl(
      {required final List<Service> services})
      : _services = services,
        super._();

  factory _$GetServicesFromKeychainResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetServicesFromKeychainResultImplFromJson(json);

  final List<Service> _services;
  @override
  List<Service> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'GetServicesFromKeychainResult(services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServicesFromKeychainResultImpl &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  /// Create a copy of GetServicesFromKeychainResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServicesFromKeychainResultImplCopyWith<
          _$GetServicesFromKeychainResultImpl>
      get copyWith => __$$GetServicesFromKeychainResultImplCopyWithImpl<
          _$GetServicesFromKeychainResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetServicesFromKeychainResultImplToJson(
      this,
    );
  }
}

abstract class _GetServicesFromKeychainResult
    extends GetServicesFromKeychainResult {
  const factory _GetServicesFromKeychainResult(
          {required final List<Service> services}) =
      _$GetServicesFromKeychainResultImpl;
  const _GetServicesFromKeychainResult._() : super._();

  factory _GetServicesFromKeychainResult.fromJson(Map<String, dynamic> json) =
      _$GetServicesFromKeychainResultImpl.fromJson;

  @override
  List<Service> get services;

  /// Create a copy of GetServicesFromKeychainResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetServicesFromKeychainResultImplCopyWith<
          _$GetServicesFromKeychainResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetServicesFromKeychainRequest _$GetServicesFromKeychainRequestFromJson(
    Map<String, dynamic> json) {
  return _GetServicesFromKeychainRequest.fromJson(json);
}

/// @nodoc
mixin _$GetServicesFromKeychainRequest {
  /// Serializes this GetServicesFromKeychainRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetServicesFromKeychainRequestCopyWith<$Res> {
  factory $GetServicesFromKeychainRequestCopyWith(
          GetServicesFromKeychainRequest value,
          $Res Function(GetServicesFromKeychainRequest) then) =
      _$GetServicesFromKeychainRequestCopyWithImpl<$Res,
          GetServicesFromKeychainRequest>;
}

/// @nodoc
class _$GetServicesFromKeychainRequestCopyWithImpl<$Res,
        $Val extends GetServicesFromKeychainRequest>
    implements $GetServicesFromKeychainRequestCopyWith<$Res> {
  _$GetServicesFromKeychainRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetServicesFromKeychainRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetServicesFromKeychainRequestImplCopyWith<$Res> {
  factory _$$GetServicesFromKeychainRequestImplCopyWith(
          _$GetServicesFromKeychainRequestImpl value,
          $Res Function(_$GetServicesFromKeychainRequestImpl) then) =
      __$$GetServicesFromKeychainRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServicesFromKeychainRequestImplCopyWithImpl<$Res>
    extends _$GetServicesFromKeychainRequestCopyWithImpl<$Res,
        _$GetServicesFromKeychainRequestImpl>
    implements _$$GetServicesFromKeychainRequestImplCopyWith<$Res> {
  __$$GetServicesFromKeychainRequestImplCopyWithImpl(
      _$GetServicesFromKeychainRequestImpl _value,
      $Res Function(_$GetServicesFromKeychainRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetServicesFromKeychainRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GetServicesFromKeychainRequestImpl
    extends _GetServicesFromKeychainRequest {
  const _$GetServicesFromKeychainRequestImpl() : super._();

  factory _$GetServicesFromKeychainRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetServicesFromKeychainRequestImplFromJson(json);

  @override
  String toString() {
    return 'GetServicesFromKeychainRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServicesFromKeychainRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GetServicesFromKeychainRequestImplToJson(
      this,
    );
  }
}

abstract class _GetServicesFromKeychainRequest
    extends GetServicesFromKeychainRequest {
  const factory _GetServicesFromKeychainRequest() =
      _$GetServicesFromKeychainRequestImpl;
  const _GetServicesFromKeychainRequest._() : super._();

  factory _GetServicesFromKeychainRequest.fromJson(Map<String, dynamic> json) =
      _$GetServicesFromKeychainRequestImpl.fromJson;
}
