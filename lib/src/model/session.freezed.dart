// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Session {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  Uint8List get aesKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime createdAt, String sessionId, Uint8List aesKey)
        waitingForValidation,
    required TResult Function(DateTime createdAt, String sessionId,
            Uint8List aesKey, RPCSessionOrigin origin)
        validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt, String sessionId, Uint8List aesKey)?
        waitingForValidation,
    TResult? Function(DateTime createdAt, String sessionId, Uint8List aesKey,
            RPCSessionOrigin origin)?
        validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt, String sessionId, Uint8List aesKey)?
        waitingForValidation,
    TResult Function(DateTime createdAt, String sessionId, Uint8List aesKey,
            RPCSessionOrigin origin)?
        validated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionWaitingForValidation value)
        waitingForValidation,
    required TResult Function(ValidatedSession value) validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionWaitingForValidation value)? waitingForValidation,
    TResult? Function(ValidatedSession value)? validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionWaitingForValidation value)? waitingForValidation,
    TResult Function(ValidatedSession value)? validated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call({DateTime createdAt, String sessionId, Uint8List aesKey});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? sessionId = null,
    Object? aesKey = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      aesKey: null == aesKey
          ? _value.aesKey
          : aesKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionWaitingForValidationImplCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$SessionWaitingForValidationImplCopyWith(
          _$SessionWaitingForValidationImpl value,
          $Res Function(_$SessionWaitingForValidationImpl) then) =
      __$$SessionWaitingForValidationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String sessionId, Uint8List aesKey});
}

/// @nodoc
class __$$SessionWaitingForValidationImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionWaitingForValidationImpl>
    implements _$$SessionWaitingForValidationImplCopyWith<$Res> {
  __$$SessionWaitingForValidationImplCopyWithImpl(
      _$SessionWaitingForValidationImpl _value,
      $Res Function(_$SessionWaitingForValidationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? sessionId = null,
    Object? aesKey = null,
  }) {
    return _then(_$SessionWaitingForValidationImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      aesKey: null == aesKey
          ? _value.aesKey
          : aesKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$SessionWaitingForValidationImpl extends SessionWaitingForValidation {
  const _$SessionWaitingForValidationImpl(
      {required this.createdAt, required this.sessionId, required this.aesKey})
      : super._();

  @override
  final DateTime createdAt;
  @override
  final String sessionId;
  @override
  final Uint8List aesKey;

  @override
  String toString() {
    return 'Session.waitingForValidation(createdAt: $createdAt, sessionId: $sessionId, aesKey: $aesKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionWaitingForValidationImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other.aesKey, aesKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, sessionId,
      const DeepCollectionEquality().hash(aesKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionWaitingForValidationImplCopyWith<_$SessionWaitingForValidationImpl>
      get copyWith => __$$SessionWaitingForValidationImplCopyWithImpl<
          _$SessionWaitingForValidationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime createdAt, String sessionId, Uint8List aesKey)
        waitingForValidation,
    required TResult Function(DateTime createdAt, String sessionId,
            Uint8List aesKey, RPCSessionOrigin origin)
        validated,
  }) {
    return waitingForValidation(createdAt, sessionId, aesKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt, String sessionId, Uint8List aesKey)?
        waitingForValidation,
    TResult? Function(DateTime createdAt, String sessionId, Uint8List aesKey,
            RPCSessionOrigin origin)?
        validated,
  }) {
    return waitingForValidation?.call(createdAt, sessionId, aesKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt, String sessionId, Uint8List aesKey)?
        waitingForValidation,
    TResult Function(DateTime createdAt, String sessionId, Uint8List aesKey,
            RPCSessionOrigin origin)?
        validated,
    required TResult orElse(),
  }) {
    if (waitingForValidation != null) {
      return waitingForValidation(createdAt, sessionId, aesKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionWaitingForValidation value)
        waitingForValidation,
    required TResult Function(ValidatedSession value) validated,
  }) {
    return waitingForValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionWaitingForValidation value)? waitingForValidation,
    TResult? Function(ValidatedSession value)? validated,
  }) {
    return waitingForValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionWaitingForValidation value)? waitingForValidation,
    TResult Function(ValidatedSession value)? validated,
    required TResult orElse(),
  }) {
    if (waitingForValidation != null) {
      return waitingForValidation(this);
    }
    return orElse();
  }
}

abstract class SessionWaitingForValidation extends Session {
  const factory SessionWaitingForValidation(
      {required final DateTime createdAt,
      required final String sessionId,
      required final Uint8List aesKey}) = _$SessionWaitingForValidationImpl;
  const SessionWaitingForValidation._() : super._();

  @override
  DateTime get createdAt;
  @override
  String get sessionId;
  @override
  Uint8List get aesKey;
  @override
  @JsonKey(ignore: true)
  _$$SessionWaitingForValidationImplCopyWith<_$SessionWaitingForValidationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidatedSessionImplCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$ValidatedSessionImplCopyWith(_$ValidatedSessionImpl value,
          $Res Function(_$ValidatedSessionImpl) then) =
      __$$ValidatedSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      String sessionId,
      Uint8List aesKey,
      RPCSessionOrigin origin});

  $RPCSessionOriginCopyWith<$Res> get origin;
}

/// @nodoc
class __$$ValidatedSessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$ValidatedSessionImpl>
    implements _$$ValidatedSessionImplCopyWith<$Res> {
  __$$ValidatedSessionImplCopyWithImpl(_$ValidatedSessionImpl _value,
      $Res Function(_$ValidatedSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? sessionId = null,
    Object? aesKey = null,
    Object? origin = null,
  }) {
    return _then(_$ValidatedSessionImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      aesKey: null == aesKey
          ? _value.aesKey
          : aesKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as RPCSessionOrigin,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RPCSessionOriginCopyWith<$Res> get origin {
    return $RPCSessionOriginCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value));
    });
  }
}

/// @nodoc

class _$ValidatedSessionImpl extends ValidatedSession {
  const _$ValidatedSessionImpl(
      {required this.createdAt,
      required this.sessionId,
      required this.aesKey,
      required this.origin})
      : super._();

  @override
  final DateTime createdAt;
  @override
  final String sessionId;
  @override
  final Uint8List aesKey;
  @override
  final RPCSessionOrigin origin;

  @override
  String toString() {
    return 'Session.validated(createdAt: $createdAt, sessionId: $sessionId, aesKey: $aesKey, origin: $origin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatedSessionImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other.aesKey, aesKey) &&
            (identical(other.origin, origin) || other.origin == origin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, sessionId,
      const DeepCollectionEquality().hash(aesKey), origin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidatedSessionImplCopyWith<_$ValidatedSessionImpl> get copyWith =>
      __$$ValidatedSessionImplCopyWithImpl<_$ValidatedSessionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime createdAt, String sessionId, Uint8List aesKey)
        waitingForValidation,
    required TResult Function(DateTime createdAt, String sessionId,
            Uint8List aesKey, RPCSessionOrigin origin)
        validated,
  }) {
    return validated(createdAt, sessionId, aesKey, origin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt, String sessionId, Uint8List aesKey)?
        waitingForValidation,
    TResult? Function(DateTime createdAt, String sessionId, Uint8List aesKey,
            RPCSessionOrigin origin)?
        validated,
  }) {
    return validated?.call(createdAt, sessionId, aesKey, origin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt, String sessionId, Uint8List aesKey)?
        waitingForValidation,
    TResult Function(DateTime createdAt, String sessionId, Uint8List aesKey,
            RPCSessionOrigin origin)?
        validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(createdAt, sessionId, aesKey, origin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionWaitingForValidation value)
        waitingForValidation,
    required TResult Function(ValidatedSession value) validated,
  }) {
    return validated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionWaitingForValidation value)? waitingForValidation,
    TResult? Function(ValidatedSession value)? validated,
  }) {
    return validated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionWaitingForValidation value)? waitingForValidation,
    TResult Function(ValidatedSession value)? validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(this);
    }
    return orElse();
  }
}

abstract class ValidatedSession extends Session {
  const factory ValidatedSession(
      {required final DateTime createdAt,
      required final String sessionId,
      required final Uint8List aesKey,
      required final RPCSessionOrigin origin}) = _$ValidatedSessionImpl;
  const ValidatedSession._() : super._();

  @override
  DateTime get createdAt;
  @override
  String get sessionId;
  @override
  Uint8List get aesKey;
  RPCSessionOrigin get origin;
  @override
  @JsonKey(ignore: true)
  _$$ValidatedSessionImplCopyWith<_$ValidatedSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
