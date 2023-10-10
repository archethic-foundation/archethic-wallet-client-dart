// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionRequestOrigin _$SessionRequestOriginFromJson(Map<String, dynamic> json) {
  return _SessionRequestOrigin.fromJson(json);
}

/// @nodoc
mixin _$SessionRequestOrigin {
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionRequestOriginCopyWith<SessionRequestOrigin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRequestOriginCopyWith<$Res> {
  factory $SessionRequestOriginCopyWith(SessionRequestOrigin value,
          $Res Function(SessionRequestOrigin) then) =
      _$SessionRequestOriginCopyWithImpl<$Res, SessionRequestOrigin>;
  @useResult
  $Res call({String name, String? url, String? logo});
}

/// @nodoc
class _$SessionRequestOriginCopyWithImpl<$Res,
        $Val extends SessionRequestOrigin>
    implements $SessionRequestOriginCopyWith<$Res> {
  _$SessionRequestOriginCopyWithImpl(this._value, this._then);

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
abstract class _$$SessionRequestOriginImplCopyWith<$Res>
    implements $SessionRequestOriginCopyWith<$Res> {
  factory _$$SessionRequestOriginImplCopyWith(_$SessionRequestOriginImpl value,
          $Res Function(_$SessionRequestOriginImpl) then) =
      __$$SessionRequestOriginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? url, String? logo});
}

/// @nodoc
class __$$SessionRequestOriginImplCopyWithImpl<$Res>
    extends _$SessionRequestOriginCopyWithImpl<$Res, _$SessionRequestOriginImpl>
    implements _$$SessionRequestOriginImplCopyWith<$Res> {
  __$$SessionRequestOriginImplCopyWithImpl(_$SessionRequestOriginImpl _value,
      $Res Function(_$SessionRequestOriginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$SessionRequestOriginImpl(
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
class _$SessionRequestOriginImpl extends _SessionRequestOrigin {
  const _$SessionRequestOriginImpl({required this.name, this.url, this.logo})
      : super._();

  factory _$SessionRequestOriginImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionRequestOriginImplFromJson(json);

  @override
  final String name;
  @override
  final String? url;
  @override
  final String? logo;

  @override
  String toString() {
    return 'SessionRequestOrigin(name: $name, url: $url, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRequestOriginImpl &&
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
  _$$SessionRequestOriginImplCopyWith<_$SessionRequestOriginImpl>
      get copyWith =>
          __$$SessionRequestOriginImplCopyWithImpl<_$SessionRequestOriginImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionRequestOriginImplToJson(
      this,
    );
  }
}

abstract class _SessionRequestOrigin extends SessionRequestOrigin {
  const factory _SessionRequestOrigin(
      {required final String name,
      final String? url,
      final String? logo}) = _$SessionRequestOriginImpl;
  const _SessionRequestOrigin._() : super._();

  factory _SessionRequestOrigin.fromJson(Map<String, dynamic> json) =
      _$SessionRequestOriginImpl.fromJson;

  @override
  String get name;
  @override
  String? get url;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$SessionRequestOriginImplCopyWith<_$SessionRequestOriginImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenSessionRequest _$OpenSessionRequestFromJson(Map<String, dynamic> json) {
  return _OpenSessionRequest.fromJson(json);
}

/// @nodoc
mixin _$OpenSessionRequest {
  String get challenge => throw _privateConstructorUsedError;
  SessionRequestOrigin get origin => throw _privateConstructorUsedError;
  Duration get maxDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenSessionRequestCopyWith<OpenSessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenSessionRequestCopyWith<$Res> {
  factory $OpenSessionRequestCopyWith(
          OpenSessionRequest value, $Res Function(OpenSessionRequest) then) =
      _$OpenSessionRequestCopyWithImpl<$Res, OpenSessionRequest>;
  @useResult
  $Res call(
      {String challenge, SessionRequestOrigin origin, Duration maxDuration});

  $SessionRequestOriginCopyWith<$Res> get origin;
}

/// @nodoc
class _$OpenSessionRequestCopyWithImpl<$Res, $Val extends OpenSessionRequest>
    implements $OpenSessionRequestCopyWith<$Res> {
  _$OpenSessionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? origin = null,
    Object? maxDuration = null,
  }) {
    return _then(_value.copyWith(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as SessionRequestOrigin,
      maxDuration: null == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionRequestOriginCopyWith<$Res> get origin {
    return $SessionRequestOriginCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenSessionRequestImplCopyWith<$Res>
    implements $OpenSessionRequestCopyWith<$Res> {
  factory _$$OpenSessionRequestImplCopyWith(_$OpenSessionRequestImpl value,
          $Res Function(_$OpenSessionRequestImpl) then) =
      __$$OpenSessionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String challenge, SessionRequestOrigin origin, Duration maxDuration});

  @override
  $SessionRequestOriginCopyWith<$Res> get origin;
}

/// @nodoc
class __$$OpenSessionRequestImplCopyWithImpl<$Res>
    extends _$OpenSessionRequestCopyWithImpl<$Res, _$OpenSessionRequestImpl>
    implements _$$OpenSessionRequestImplCopyWith<$Res> {
  __$$OpenSessionRequestImplCopyWithImpl(_$OpenSessionRequestImpl _value,
      $Res Function(_$OpenSessionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? origin = null,
    Object? maxDuration = null,
  }) {
    return _then(_$OpenSessionRequestImpl(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as SessionRequestOrigin,
      maxDuration: null == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenSessionRequestImpl extends _OpenSessionRequest {
  const _$OpenSessionRequestImpl(
      {required this.challenge,
      required this.origin,
      required this.maxDuration})
      : super._();

  factory _$OpenSessionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenSessionRequestImplFromJson(json);

  @override
  final String challenge;
  @override
  final SessionRequestOrigin origin;
  @override
  final Duration maxDuration;

  @override
  String toString() {
    return 'OpenSessionRequest(challenge: $challenge, origin: $origin, maxDuration: $maxDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSessionRequestImpl &&
            (identical(other.challenge, challenge) ||
                other.challenge == challenge) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.maxDuration, maxDuration) ||
                other.maxDuration == maxDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, challenge, origin, maxDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenSessionRequestImplCopyWith<_$OpenSessionRequestImpl> get copyWith =>
      __$$OpenSessionRequestImplCopyWithImpl<_$OpenSessionRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenSessionRequestImplToJson(
      this,
    );
  }
}

abstract class _OpenSessionRequest extends OpenSessionRequest {
  const factory _OpenSessionRequest(
      {required final String challenge,
      required final SessionRequestOrigin origin,
      required final Duration maxDuration}) = _$OpenSessionRequestImpl;
  const _OpenSessionRequest._() : super._();

  factory _OpenSessionRequest.fromJson(Map<String, dynamic> json) =
      _$OpenSessionRequestImpl.fromJson;

  @override
  String get challenge;
  @override
  SessionRequestOrigin get origin;
  @override
  Duration get maxDuration;
  @override
  @JsonKey(ignore: true)
  _$$OpenSessionRequestImplCopyWith<_$OpenSessionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
