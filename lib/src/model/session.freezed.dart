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
  String get sessionId => throw _privateConstructorUsedError;
  Uint8List get aesKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sessionId, Uint8List aesKey)
        waitingForValidation,
    required TResult Function(String sessionId, Uint8List aesKey) validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sessionId, Uint8List aesKey)? waitingForValidation,
    TResult? Function(String sessionId, Uint8List aesKey)? validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sessionId, Uint8List aesKey)? waitingForValidation,
    TResult Function(String sessionId, Uint8List aesKey)? validated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SessionWaitingValidation value)
        waitingForValidation,
    required TResult Function(_SessionWaitingValidated value) validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SessionWaitingValidation value)? waitingForValidation,
    TResult? Function(_SessionWaitingValidated value)? validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SessionWaitingValidation value)? waitingForValidation,
    TResult Function(_SessionWaitingValidated value)? validated,
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
  $Res call({String sessionId, Uint8List aesKey});
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
    Object? sessionId = null,
    Object? aesKey = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$SessionWaitingValidationImplCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$SessionWaitingValidationImplCopyWith(
          _$SessionWaitingValidationImpl value,
          $Res Function(_$SessionWaitingValidationImpl) then) =
      __$$SessionWaitingValidationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, Uint8List aesKey});
}

/// @nodoc
class __$$SessionWaitingValidationImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionWaitingValidationImpl>
    implements _$$SessionWaitingValidationImplCopyWith<$Res> {
  __$$SessionWaitingValidationImplCopyWithImpl(
      _$SessionWaitingValidationImpl _value,
      $Res Function(_$SessionWaitingValidationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? aesKey = null,
  }) {
    return _then(_$SessionWaitingValidationImpl(
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

class _$SessionWaitingValidationImpl extends _SessionWaitingValidation {
  const _$SessionWaitingValidationImpl(
      {required this.sessionId, required this.aesKey})
      : super._();

  @override
  final String sessionId;
  @override
  final Uint8List aesKey;

  @override
  String toString() {
    return 'Session.waitingForValidation(sessionId: $sessionId, aesKey: $aesKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionWaitingValidationImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other.aesKey, aesKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sessionId, const DeepCollectionEquality().hash(aesKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionWaitingValidationImplCopyWith<_$SessionWaitingValidationImpl>
      get copyWith => __$$SessionWaitingValidationImplCopyWithImpl<
          _$SessionWaitingValidationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sessionId, Uint8List aesKey)
        waitingForValidation,
    required TResult Function(String sessionId, Uint8List aesKey) validated,
  }) {
    return waitingForValidation(sessionId, aesKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sessionId, Uint8List aesKey)? waitingForValidation,
    TResult? Function(String sessionId, Uint8List aesKey)? validated,
  }) {
    return waitingForValidation?.call(sessionId, aesKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sessionId, Uint8List aesKey)? waitingForValidation,
    TResult Function(String sessionId, Uint8List aesKey)? validated,
    required TResult orElse(),
  }) {
    if (waitingForValidation != null) {
      return waitingForValidation(sessionId, aesKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SessionWaitingValidation value)
        waitingForValidation,
    required TResult Function(_SessionWaitingValidated value) validated,
  }) {
    return waitingForValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SessionWaitingValidation value)? waitingForValidation,
    TResult? Function(_SessionWaitingValidated value)? validated,
  }) {
    return waitingForValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SessionWaitingValidation value)? waitingForValidation,
    TResult Function(_SessionWaitingValidated value)? validated,
    required TResult orElse(),
  }) {
    if (waitingForValidation != null) {
      return waitingForValidation(this);
    }
    return orElse();
  }
}

abstract class _SessionWaitingValidation extends Session {
  const factory _SessionWaitingValidation(
      {required final String sessionId,
      required final Uint8List aesKey}) = _$SessionWaitingValidationImpl;
  const _SessionWaitingValidation._() : super._();

  @override
  String get sessionId;
  @override
  Uint8List get aesKey;
  @override
  @JsonKey(ignore: true)
  _$$SessionWaitingValidationImplCopyWith<_$SessionWaitingValidationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionWaitingValidatedImplCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$SessionWaitingValidatedImplCopyWith(
          _$SessionWaitingValidatedImpl value,
          $Res Function(_$SessionWaitingValidatedImpl) then) =
      __$$SessionWaitingValidatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, Uint8List aesKey});
}

/// @nodoc
class __$$SessionWaitingValidatedImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionWaitingValidatedImpl>
    implements _$$SessionWaitingValidatedImplCopyWith<$Res> {
  __$$SessionWaitingValidatedImplCopyWithImpl(
      _$SessionWaitingValidatedImpl _value,
      $Res Function(_$SessionWaitingValidatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? aesKey = null,
  }) {
    return _then(_$SessionWaitingValidatedImpl(
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

class _$SessionWaitingValidatedImpl extends _SessionWaitingValidated {
  const _$SessionWaitingValidatedImpl(
      {required this.sessionId, required this.aesKey})
      : super._();

  @override
  final String sessionId;
  @override
  final Uint8List aesKey;

  @override
  String toString() {
    return 'Session.validated(sessionId: $sessionId, aesKey: $aesKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionWaitingValidatedImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other.aesKey, aesKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sessionId, const DeepCollectionEquality().hash(aesKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionWaitingValidatedImplCopyWith<_$SessionWaitingValidatedImpl>
      get copyWith => __$$SessionWaitingValidatedImplCopyWithImpl<
          _$SessionWaitingValidatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sessionId, Uint8List aesKey)
        waitingForValidation,
    required TResult Function(String sessionId, Uint8List aesKey) validated,
  }) {
    return validated(sessionId, aesKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sessionId, Uint8List aesKey)? waitingForValidation,
    TResult? Function(String sessionId, Uint8List aesKey)? validated,
  }) {
    return validated?.call(sessionId, aesKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sessionId, Uint8List aesKey)? waitingForValidation,
    TResult Function(String sessionId, Uint8List aesKey)? validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(sessionId, aesKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SessionWaitingValidation value)
        waitingForValidation,
    required TResult Function(_SessionWaitingValidated value) validated,
  }) {
    return validated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SessionWaitingValidation value)? waitingForValidation,
    TResult? Function(_SessionWaitingValidated value)? validated,
  }) {
    return validated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SessionWaitingValidation value)? waitingForValidation,
    TResult Function(_SessionWaitingValidated value)? validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(this);
    }
    return orElse();
  }
}

abstract class _SessionWaitingValidated extends Session {
  const factory _SessionWaitingValidated(
      {required final String sessionId,
      required final Uint8List aesKey}) = _$SessionWaitingValidatedImpl;
  const _SessionWaitingValidated._() : super._();

  @override
  String get sessionId;
  @override
  Uint8List get aesKey;
  @override
  @JsonKey(ignore: true)
  _$$SessionWaitingValidatedImplCopyWith<_$SessionWaitingValidatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
