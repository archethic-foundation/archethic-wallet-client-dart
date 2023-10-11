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

RPCSessionOrigin _$RPCSessionOriginFromJson(Map<String, dynamic> json) {
  return _RPCSessionOrigin.fromJson(json);
}

/// @nodoc
mixin _$RPCSessionOrigin {
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RPCSessionOriginCopyWith<RPCSessionOrigin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPCSessionOriginCopyWith<$Res> {
  factory $RPCSessionOriginCopyWith(
          RPCSessionOrigin value, $Res Function(RPCSessionOrigin) then) =
      _$RPCSessionOriginCopyWithImpl<$Res, RPCSessionOrigin>;
  @useResult
  $Res call({String name, String? url, String? logo});
}

/// @nodoc
class _$RPCSessionOriginCopyWithImpl<$Res, $Val extends RPCSessionOrigin>
    implements $RPCSessionOriginCopyWith<$Res> {
  _$RPCSessionOriginCopyWithImpl(this._value, this._then);

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
abstract class _$$RPCSessionOriginImplCopyWith<$Res>
    implements $RPCSessionOriginCopyWith<$Res> {
  factory _$$RPCSessionOriginImplCopyWith(_$RPCSessionOriginImpl value,
          $Res Function(_$RPCSessionOriginImpl) then) =
      __$$RPCSessionOriginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? url, String? logo});
}

/// @nodoc
class __$$RPCSessionOriginImplCopyWithImpl<$Res>
    extends _$RPCSessionOriginCopyWithImpl<$Res, _$RPCSessionOriginImpl>
    implements _$$RPCSessionOriginImplCopyWith<$Res> {
  __$$RPCSessionOriginImplCopyWithImpl(_$RPCSessionOriginImpl _value,
      $Res Function(_$RPCSessionOriginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$RPCSessionOriginImpl(
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
class _$RPCSessionOriginImpl extends _RPCSessionOrigin {
  const _$RPCSessionOriginImpl({required this.name, this.url, this.logo})
      : super._();

  factory _$RPCSessionOriginImpl.fromJson(Map<String, dynamic> json) =>
      _$$RPCSessionOriginImplFromJson(json);

  @override
  final String name;
  @override
  final String? url;
  @override
  final String? logo;

  @override
  String toString() {
    return 'RPCSessionOrigin(name: $name, url: $url, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RPCSessionOriginImpl &&
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
  _$$RPCSessionOriginImplCopyWith<_$RPCSessionOriginImpl> get copyWith =>
      __$$RPCSessionOriginImplCopyWithImpl<_$RPCSessionOriginImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RPCSessionOriginImplToJson(
      this,
    );
  }
}

abstract class _RPCSessionOrigin extends RPCSessionOrigin {
  const factory _RPCSessionOrigin(
      {required final String name,
      final String? url,
      final String? logo}) = _$RPCSessionOriginImpl;
  const _RPCSessionOrigin._() : super._();

  factory _RPCSessionOrigin.fromJson(Map<String, dynamic> json) =
      _$RPCSessionOriginImpl.fromJson;

  @override
  String get name;
  @override
  String? get url;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$RPCSessionOriginImplCopyWith<_$RPCSessionOriginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenSessionRequest _$OpenSessionRequestFromJson(Map<String, dynamic> json) {
  return _OpenSessionRequest.fromJson(json);
}

/// @nodoc
mixin _$OpenSessionRequest {
  String get challenge => throw _privateConstructorUsedError;
  RPCSessionOrigin get origin => throw _privateConstructorUsedError;
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
  $Res call({String challenge, RPCSessionOrigin origin, Duration maxDuration});

  $RPCSessionOriginCopyWith<$Res> get origin;
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
              as RPCSessionOrigin,
      maxDuration: null == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RPCSessionOriginCopyWith<$Res> get origin {
    return $RPCSessionOriginCopyWith<$Res>(_value.origin, (value) {
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
  $Res call({String challenge, RPCSessionOrigin origin, Duration maxDuration});

  @override
  $RPCSessionOriginCopyWith<$Res> get origin;
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
              as RPCSessionOrigin,
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
  final RPCSessionOrigin origin;
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
      required final RPCSessionOrigin origin,
      required final Duration maxDuration}) = _$OpenSessionRequestImpl;
  const _OpenSessionRequest._() : super._();

  factory _OpenSessionRequest.fromJson(Map<String, dynamic> json) =
      _$OpenSessionRequestImpl.fromJson;

  @override
  String get challenge;
  @override
  RPCSessionOrigin get origin;
  @override
  Duration get maxDuration;
  @override
  @JsonKey(ignore: true)
  _$$OpenSessionRequestImplCopyWith<_$OpenSessionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenSessionHandshakeRequest _$OpenSessionHandshakeRequestFromJson(
    Map<String, dynamic> json) {
  return _OpenSessionHandshakeRequest.fromJson(json);
}

/// @nodoc
mixin _$OpenSessionHandshakeRequest {
  String get pubKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenSessionHandshakeRequestCopyWith<OpenSessionHandshakeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenSessionHandshakeRequestCopyWith<$Res> {
  factory $OpenSessionHandshakeRequestCopyWith(
          OpenSessionHandshakeRequest value,
          $Res Function(OpenSessionHandshakeRequest) then) =
      _$OpenSessionHandshakeRequestCopyWithImpl<$Res,
          OpenSessionHandshakeRequest>;
  @useResult
  $Res call({String pubKey});
}

/// @nodoc
class _$OpenSessionHandshakeRequestCopyWithImpl<$Res,
        $Val extends OpenSessionHandshakeRequest>
    implements $OpenSessionHandshakeRequestCopyWith<$Res> {
  _$OpenSessionHandshakeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pubKey = null,
  }) {
    return _then(_value.copyWith(
      pubKey: null == pubKey
          ? _value.pubKey
          : pubKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenSessionHandshakeRequestImplCopyWith<$Res>
    implements $OpenSessionHandshakeRequestCopyWith<$Res> {
  factory _$$OpenSessionHandshakeRequestImplCopyWith(
          _$OpenSessionHandshakeRequestImpl value,
          $Res Function(_$OpenSessionHandshakeRequestImpl) then) =
      __$$OpenSessionHandshakeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pubKey});
}

/// @nodoc
class __$$OpenSessionHandshakeRequestImplCopyWithImpl<$Res>
    extends _$OpenSessionHandshakeRequestCopyWithImpl<$Res,
        _$OpenSessionHandshakeRequestImpl>
    implements _$$OpenSessionHandshakeRequestImplCopyWith<$Res> {
  __$$OpenSessionHandshakeRequestImplCopyWithImpl(
      _$OpenSessionHandshakeRequestImpl _value,
      $Res Function(_$OpenSessionHandshakeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pubKey = null,
  }) {
    return _then(_$OpenSessionHandshakeRequestImpl(
      pubKey: null == pubKey
          ? _value.pubKey
          : pubKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenSessionHandshakeRequestImpl extends _OpenSessionHandshakeRequest {
  const _$OpenSessionHandshakeRequestImpl({required this.pubKey}) : super._();

  factory _$OpenSessionHandshakeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenSessionHandshakeRequestImplFromJson(json);

  @override
  final String pubKey;

  @override
  String toString() {
    return 'OpenSessionHandshakeRequest(pubKey: $pubKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSessionHandshakeRequestImpl &&
            (identical(other.pubKey, pubKey) || other.pubKey == pubKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pubKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenSessionHandshakeRequestImplCopyWith<_$OpenSessionHandshakeRequestImpl>
      get copyWith => __$$OpenSessionHandshakeRequestImplCopyWithImpl<
          _$OpenSessionHandshakeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenSessionHandshakeRequestImplToJson(
      this,
    );
  }
}

abstract class _OpenSessionHandshakeRequest
    extends OpenSessionHandshakeRequest {
  const factory _OpenSessionHandshakeRequest({required final String pubKey}) =
      _$OpenSessionHandshakeRequestImpl;
  const _OpenSessionHandshakeRequest._() : super._();

  factory _OpenSessionHandshakeRequest.fromJson(Map<String, dynamic> json) =
      _$OpenSessionHandshakeRequestImpl.fromJson;

  @override
  String get pubKey;
  @override
  @JsonKey(ignore: true)
  _$$OpenSessionHandshakeRequestImplCopyWith<_$OpenSessionHandshakeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenSessionHandshakeResponse _$OpenSessionHandshakeResponseFromJson(
    Map<String, dynamic> json) {
  return _OpenSessionHandshakeResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenSessionHandshakeResponse {
  String get aesKey => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenSessionHandshakeResponseCopyWith<OpenSessionHandshakeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenSessionHandshakeResponseCopyWith<$Res> {
  factory $OpenSessionHandshakeResponseCopyWith(
          OpenSessionHandshakeResponse value,
          $Res Function(OpenSessionHandshakeResponse) then) =
      _$OpenSessionHandshakeResponseCopyWithImpl<$Res,
          OpenSessionHandshakeResponse>;
  @useResult
  $Res call({String aesKey, String sessionId});
}

/// @nodoc
class _$OpenSessionHandshakeResponseCopyWithImpl<$Res,
        $Val extends OpenSessionHandshakeResponse>
    implements $OpenSessionHandshakeResponseCopyWith<$Res> {
  _$OpenSessionHandshakeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aesKey = null,
    Object? sessionId = null,
  }) {
    return _then(_value.copyWith(
      aesKey: null == aesKey
          ? _value.aesKey
          : aesKey // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenSessionHandshakeResponseImplCopyWith<$Res>
    implements $OpenSessionHandshakeResponseCopyWith<$Res> {
  factory _$$OpenSessionHandshakeResponseImplCopyWith(
          _$OpenSessionHandshakeResponseImpl value,
          $Res Function(_$OpenSessionHandshakeResponseImpl) then) =
      __$$OpenSessionHandshakeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String aesKey, String sessionId});
}

/// @nodoc
class __$$OpenSessionHandshakeResponseImplCopyWithImpl<$Res>
    extends _$OpenSessionHandshakeResponseCopyWithImpl<$Res,
        _$OpenSessionHandshakeResponseImpl>
    implements _$$OpenSessionHandshakeResponseImplCopyWith<$Res> {
  __$$OpenSessionHandshakeResponseImplCopyWithImpl(
      _$OpenSessionHandshakeResponseImpl _value,
      $Res Function(_$OpenSessionHandshakeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aesKey = null,
    Object? sessionId = null,
  }) {
    return _then(_$OpenSessionHandshakeResponseImpl(
      aesKey: null == aesKey
          ? _value.aesKey
          : aesKey // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenSessionHandshakeResponseImpl extends _OpenSessionHandshakeResponse {
  const _$OpenSessionHandshakeResponseImpl(
      {required this.aesKey, required this.sessionId})
      : super._();

  factory _$OpenSessionHandshakeResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenSessionHandshakeResponseImplFromJson(json);

  @override
  final String aesKey;
  @override
  final String sessionId;

  @override
  String toString() {
    return 'OpenSessionHandshakeResponse(aesKey: $aesKey, sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSessionHandshakeResponseImpl &&
            (identical(other.aesKey, aesKey) || other.aesKey == aesKey) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aesKey, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenSessionHandshakeResponseImplCopyWith<
          _$OpenSessionHandshakeResponseImpl>
      get copyWith => __$$OpenSessionHandshakeResponseImplCopyWithImpl<
          _$OpenSessionHandshakeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenSessionHandshakeResponseImplToJson(
      this,
    );
  }
}

abstract class _OpenSessionHandshakeResponse
    extends OpenSessionHandshakeResponse {
  const factory _OpenSessionHandshakeResponse(
      {required final String aesKey,
      required final String sessionId}) = _$OpenSessionHandshakeResponseImpl;
  const _OpenSessionHandshakeResponse._() : super._();

  factory _OpenSessionHandshakeResponse.fromJson(Map<String, dynamic> json) =
      _$OpenSessionHandshakeResponseImpl.fromJson;

  @override
  String get aesKey;
  @override
  String get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$OpenSessionHandshakeResponseImplCopyWith<
          _$OpenSessionHandshakeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenSessionChallengeRequest _$OpenSessionChallengeRequestFromJson(
    Map<String, dynamic> json) {
  return _OpenSessionChallengeRequest.fromJson(json);
}

/// @nodoc
mixin _$OpenSessionChallengeRequest {
  String get sessionId => throw _privateConstructorUsedError;
  RPCSessionOrigin get origin => throw _privateConstructorUsedError;
  String get challenge => throw _privateConstructorUsedError;
  int get maxDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenSessionChallengeRequestCopyWith<OpenSessionChallengeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenSessionChallengeRequestCopyWith<$Res> {
  factory $OpenSessionChallengeRequestCopyWith(
          OpenSessionChallengeRequest value,
          $Res Function(OpenSessionChallengeRequest) then) =
      _$OpenSessionChallengeRequestCopyWithImpl<$Res,
          OpenSessionChallengeRequest>;
  @useResult
  $Res call(
      {String sessionId,
      RPCSessionOrigin origin,
      String challenge,
      int maxDuration});

  $RPCSessionOriginCopyWith<$Res> get origin;
}

/// @nodoc
class _$OpenSessionChallengeRequestCopyWithImpl<$Res,
        $Val extends OpenSessionChallengeRequest>
    implements $OpenSessionChallengeRequestCopyWith<$Res> {
  _$OpenSessionChallengeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? origin = null,
    Object? challenge = null,
    Object? maxDuration = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as RPCSessionOrigin,
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      maxDuration: null == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RPCSessionOriginCopyWith<$Res> get origin {
    return $RPCSessionOriginCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenSessionChallengeRequestImplCopyWith<$Res>
    implements $OpenSessionChallengeRequestCopyWith<$Res> {
  factory _$$OpenSessionChallengeRequestImplCopyWith(
          _$OpenSessionChallengeRequestImpl value,
          $Res Function(_$OpenSessionChallengeRequestImpl) then) =
      __$$OpenSessionChallengeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sessionId,
      RPCSessionOrigin origin,
      String challenge,
      int maxDuration});

  @override
  $RPCSessionOriginCopyWith<$Res> get origin;
}

/// @nodoc
class __$$OpenSessionChallengeRequestImplCopyWithImpl<$Res>
    extends _$OpenSessionChallengeRequestCopyWithImpl<$Res,
        _$OpenSessionChallengeRequestImpl>
    implements _$$OpenSessionChallengeRequestImplCopyWith<$Res> {
  __$$OpenSessionChallengeRequestImplCopyWithImpl(
      _$OpenSessionChallengeRequestImpl _value,
      $Res Function(_$OpenSessionChallengeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? origin = null,
    Object? challenge = null,
    Object? maxDuration = null,
  }) {
    return _then(_$OpenSessionChallengeRequestImpl(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as RPCSessionOrigin,
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      maxDuration: null == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenSessionChallengeRequestImpl extends _OpenSessionChallengeRequest {
  const _$OpenSessionChallengeRequestImpl(
      {required this.sessionId,
      required this.origin,
      required this.challenge,
      required this.maxDuration})
      : super._();

  factory _$OpenSessionChallengeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenSessionChallengeRequestImplFromJson(json);

  @override
  final String sessionId;
  @override
  final RPCSessionOrigin origin;
  @override
  final String challenge;
  @override
  final int maxDuration;

  @override
  String toString() {
    return 'OpenSessionChallengeRequest(sessionId: $sessionId, origin: $origin, challenge: $challenge, maxDuration: $maxDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSessionChallengeRequestImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.challenge, challenge) ||
                other.challenge == challenge) &&
            (identical(other.maxDuration, maxDuration) ||
                other.maxDuration == maxDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sessionId, origin, challenge, maxDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenSessionChallengeRequestImplCopyWith<_$OpenSessionChallengeRequestImpl>
      get copyWith => __$$OpenSessionChallengeRequestImplCopyWithImpl<
          _$OpenSessionChallengeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenSessionChallengeRequestImplToJson(
      this,
    );
  }
}

abstract class _OpenSessionChallengeRequest
    extends OpenSessionChallengeRequest {
  const factory _OpenSessionChallengeRequest(
      {required final String sessionId,
      required final RPCSessionOrigin origin,
      required final String challenge,
      required final int maxDuration}) = _$OpenSessionChallengeRequestImpl;
  const _OpenSessionChallengeRequest._() : super._();

  factory _OpenSessionChallengeRequest.fromJson(Map<String, dynamic> json) =
      _$OpenSessionChallengeRequestImpl.fromJson;

  @override
  String get sessionId;
  @override
  RPCSessionOrigin get origin;
  @override
  String get challenge;
  @override
  int get maxDuration;
  @override
  @JsonKey(ignore: true)
  _$$OpenSessionChallengeRequestImplCopyWith<_$OpenSessionChallengeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
