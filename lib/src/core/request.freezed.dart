// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrigin _$RequestOriginFromJson(Map<String, dynamic> json) {
  return _RequestOrigin.fromJson(json);
}

/// @nodoc
mixin _$RequestOrigin {
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestOriginCopyWith<RequestOrigin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOriginCopyWith<$Res> {
  factory $RequestOriginCopyWith(
          RequestOrigin value, $Res Function(RequestOrigin) then) =
      _$RequestOriginCopyWithImpl<$Res, RequestOrigin>;
  @useResult
  $Res call({String name, String? url, String? logo});
}

/// @nodoc
class _$RequestOriginCopyWithImpl<$Res, $Val extends RequestOrigin>
    implements $RequestOriginCopyWith<$Res> {
  _$RequestOriginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOriginImplCopyWith<$Res>
    implements $RequestOriginCopyWith<$Res> {
  factory _$$RequestOriginImplCopyWith(
          _$RequestOriginImpl value, $Res Function(_$RequestOriginImpl) then) =
      __$$RequestOriginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? url, String? logo});
}

/// @nodoc
class __$$RequestOriginImplCopyWithImpl<$Res>
    extends _$RequestOriginCopyWithImpl<$Res, _$RequestOriginImpl>
    implements _$$RequestOriginImplCopyWith<$Res> {
  __$$RequestOriginImplCopyWithImpl(
      _$RequestOriginImpl _value, $Res Function(_$RequestOriginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$RequestOriginImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOriginImpl extends _RequestOrigin {
  const _$RequestOriginImpl({required this.name, this.url, this.logo})
      : super._();

  factory _$RequestOriginImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOriginImplFromJson(json);

  @override
  final String name;
  @override
  final String? url;
  @override
  final String? logo;

  @override
  String toString() {
    return 'RequestOrigin(name: $name, url: $url, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOriginImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOriginImplCopyWith<_$RequestOriginImpl> get copyWith =>
      __$$RequestOriginImplCopyWithImpl<_$RequestOriginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOriginImplToJson(
      this,
    );
  }
}

abstract class _RequestOrigin extends RequestOrigin {
  const factory _RequestOrigin(
      {required final String name,
      final String? url,
      final String? logo}) = _$RequestOriginImpl;
  const _RequestOrigin._() : super._();

  factory _RequestOrigin.fromJson(Map<String, dynamic> json) =
      _$RequestOriginImpl.fromJson;

  @override
  String get name;
  @override
  String? get url;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$RequestOriginImplCopyWith<_$RequestOriginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Request _$RequestFromJson(Map<String, dynamic> json) {
  return _Request.fromJson(json);
}

/// @nodoc
mixin _$Request {
  RequestOrigin get origin => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError; // Rpc protocol version
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCopyWith<Request> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res, Request>;
  @useResult
  $Res call({RequestOrigin origin, int version, Map<String, dynamic> payload});

  $RequestOriginCopyWith<$Res> get origin;
}

/// @nodoc
class _$RequestCopyWithImpl<$Res, $Val extends Request>
    implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? version = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as RequestOrigin,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestOriginCopyWith<$Res> get origin {
    return $RequestOriginCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestImplCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$$RequestImplCopyWith(
          _$RequestImpl value, $Res Function(_$RequestImpl) then) =
      __$$RequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOrigin origin, int version, Map<String, dynamic> payload});

  @override
  $RequestOriginCopyWith<$Res> get origin;
}

/// @nodoc
class __$$RequestImplCopyWithImpl<$Res>
    extends _$RequestCopyWithImpl<$Res, _$RequestImpl>
    implements _$$RequestImplCopyWith<$Res> {
  __$$RequestImplCopyWithImpl(
      _$RequestImpl _value, $Res Function(_$RequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? version = null,
    Object? payload = null,
  }) {
    return _then(_$RequestImpl(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as RequestOrigin,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestImpl extends _Request {
  const _$RequestImpl(
      {required this.origin,
      required this.version,
      required final Map<String, dynamic> payload})
      : _payload = payload,
        super._();

  factory _$RequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestImplFromJson(json);

  @override
  final RequestOrigin origin;
  @override
  final int version;
// Rpc protocol version
  final Map<String, dynamic> _payload;
// Rpc protocol version
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  String toString() {
    return 'Request(origin: $origin, version: $version, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestImpl &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, origin, version,
      const DeepCollectionEquality().hash(_payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestImplCopyWith<_$RequestImpl> get copyWith =>
      __$$RequestImplCopyWithImpl<_$RequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestImplToJson(
      this,
    );
  }
}

abstract class _Request extends Request {
  const factory _Request(
      {required final RequestOrigin origin,
      required final int version,
      required final Map<String, dynamic> payload}) = _$RequestImpl;
  const _Request._() : super._();

  factory _Request.fromJson(Map<String, dynamic> json) = _$RequestImpl.fromJson;

  @override
  RequestOrigin get origin;
  @override
  int get version;
  @override // Rpc protocol version
  Map<String, dynamic> get payload;
  @override
  @JsonKey(ignore: true)
  _$$RequestImplCopyWith<_$RequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
