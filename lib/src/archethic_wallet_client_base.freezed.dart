// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archethic_wallet_client_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArchethicDappSession {
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
    required TResult Function(_ArchethicDappSessionWaitingValidation value)
        waitingForValidation,
    required TResult Function(_ArchethicDappSessionWaitingValidated value)
        validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ArchethicDappSessionWaitingValidation value)?
        waitingForValidation,
    TResult? Function(_ArchethicDappSessionWaitingValidated value)? validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArchethicDappSessionWaitingValidation value)?
        waitingForValidation,
    TResult Function(_ArchethicDappSessionWaitingValidated value)? validated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArchethicDappSessionCopyWith<ArchethicDappSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchethicDappSessionCopyWith<$Res> {
  factory $ArchethicDappSessionCopyWith(ArchethicDappSession value,
          $Res Function(ArchethicDappSession) then) =
      _$ArchethicDappSessionCopyWithImpl<$Res, ArchethicDappSession>;
  @useResult
  $Res call({String sessionId, Uint8List aesKey});
}

/// @nodoc
class _$ArchethicDappSessionCopyWithImpl<$Res,
        $Val extends ArchethicDappSession>
    implements $ArchethicDappSessionCopyWith<$Res> {
  _$ArchethicDappSessionCopyWithImpl(this._value, this._then);

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
abstract class _$$ArchethicDappSessionWaitingValidationImplCopyWith<$Res>
    implements $ArchethicDappSessionCopyWith<$Res> {
  factory _$$ArchethicDappSessionWaitingValidationImplCopyWith(
          _$ArchethicDappSessionWaitingValidationImpl value,
          $Res Function(_$ArchethicDappSessionWaitingValidationImpl) then) =
      __$$ArchethicDappSessionWaitingValidationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, Uint8List aesKey});
}

/// @nodoc
class __$$ArchethicDappSessionWaitingValidationImplCopyWithImpl<$Res>
    extends _$ArchethicDappSessionCopyWithImpl<$Res,
        _$ArchethicDappSessionWaitingValidationImpl>
    implements _$$ArchethicDappSessionWaitingValidationImplCopyWith<$Res> {
  __$$ArchethicDappSessionWaitingValidationImplCopyWithImpl(
      _$ArchethicDappSessionWaitingValidationImpl _value,
      $Res Function(_$ArchethicDappSessionWaitingValidationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? aesKey = null,
  }) {
    return _then(_$ArchethicDappSessionWaitingValidationImpl(
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

class _$ArchethicDappSessionWaitingValidationImpl
    extends _ArchethicDappSessionWaitingValidation {
  const _$ArchethicDappSessionWaitingValidationImpl(
      {required this.sessionId, required this.aesKey})
      : super._();

  @override
  final String sessionId;
  @override
  final Uint8List aesKey;

  @override
  String toString() {
    return 'ArchethicDappSession.waitingForValidation(sessionId: $sessionId, aesKey: $aesKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchethicDappSessionWaitingValidationImpl &&
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
  _$$ArchethicDappSessionWaitingValidationImplCopyWith<
          _$ArchethicDappSessionWaitingValidationImpl>
      get copyWith => __$$ArchethicDappSessionWaitingValidationImplCopyWithImpl<
          _$ArchethicDappSessionWaitingValidationImpl>(this, _$identity);

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
    required TResult Function(_ArchethicDappSessionWaitingValidation value)
        waitingForValidation,
    required TResult Function(_ArchethicDappSessionWaitingValidated value)
        validated,
  }) {
    return waitingForValidation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ArchethicDappSessionWaitingValidation value)?
        waitingForValidation,
    TResult? Function(_ArchethicDappSessionWaitingValidated value)? validated,
  }) {
    return waitingForValidation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArchethicDappSessionWaitingValidation value)?
        waitingForValidation,
    TResult Function(_ArchethicDappSessionWaitingValidated value)? validated,
    required TResult orElse(),
  }) {
    if (waitingForValidation != null) {
      return waitingForValidation(this);
    }
    return orElse();
  }
}

abstract class _ArchethicDappSessionWaitingValidation
    extends ArchethicDappSession {
  const factory _ArchethicDappSessionWaitingValidation(
          {required final String sessionId, required final Uint8List aesKey}) =
      _$ArchethicDappSessionWaitingValidationImpl;
  const _ArchethicDappSessionWaitingValidation._() : super._();

  @override
  String get sessionId;
  @override
  Uint8List get aesKey;
  @override
  @JsonKey(ignore: true)
  _$$ArchethicDappSessionWaitingValidationImplCopyWith<
          _$ArchethicDappSessionWaitingValidationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArchethicDappSessionWaitingValidatedImplCopyWith<$Res>
    implements $ArchethicDappSessionCopyWith<$Res> {
  factory _$$ArchethicDappSessionWaitingValidatedImplCopyWith(
          _$ArchethicDappSessionWaitingValidatedImpl value,
          $Res Function(_$ArchethicDappSessionWaitingValidatedImpl) then) =
      __$$ArchethicDappSessionWaitingValidatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, Uint8List aesKey});
}

/// @nodoc
class __$$ArchethicDappSessionWaitingValidatedImplCopyWithImpl<$Res>
    extends _$ArchethicDappSessionCopyWithImpl<$Res,
        _$ArchethicDappSessionWaitingValidatedImpl>
    implements _$$ArchethicDappSessionWaitingValidatedImplCopyWith<$Res> {
  __$$ArchethicDappSessionWaitingValidatedImplCopyWithImpl(
      _$ArchethicDappSessionWaitingValidatedImpl _value,
      $Res Function(_$ArchethicDappSessionWaitingValidatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? aesKey = null,
  }) {
    return _then(_$ArchethicDappSessionWaitingValidatedImpl(
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

class _$ArchethicDappSessionWaitingValidatedImpl
    extends _ArchethicDappSessionWaitingValidated {
  const _$ArchethicDappSessionWaitingValidatedImpl(
      {required this.sessionId, required this.aesKey})
      : super._();

  @override
  final String sessionId;
  @override
  final Uint8List aesKey;

  @override
  String toString() {
    return 'ArchethicDappSession.validated(sessionId: $sessionId, aesKey: $aesKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchethicDappSessionWaitingValidatedImpl &&
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
  _$$ArchethicDappSessionWaitingValidatedImplCopyWith<
          _$ArchethicDappSessionWaitingValidatedImpl>
      get copyWith => __$$ArchethicDappSessionWaitingValidatedImplCopyWithImpl<
          _$ArchethicDappSessionWaitingValidatedImpl>(this, _$identity);

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
    required TResult Function(_ArchethicDappSessionWaitingValidation value)
        waitingForValidation,
    required TResult Function(_ArchethicDappSessionWaitingValidated value)
        validated,
  }) {
    return validated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ArchethicDappSessionWaitingValidation value)?
        waitingForValidation,
    TResult? Function(_ArchethicDappSessionWaitingValidated value)? validated,
  }) {
    return validated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArchethicDappSessionWaitingValidation value)?
        waitingForValidation,
    TResult Function(_ArchethicDappSessionWaitingValidated value)? validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(this);
    }
    return orElse();
  }
}

abstract class _ArchethicDappSessionWaitingValidated
    extends ArchethicDappSession {
  const factory _ArchethicDappSessionWaitingValidated(
          {required final String sessionId, required final Uint8List aesKey}) =
      _$ArchethicDappSessionWaitingValidatedImpl;
  const _ArchethicDappSessionWaitingValidated._() : super._();

  @override
  String get sessionId;
  @override
  Uint8List get aesKey;
  @override
  @JsonKey(ignore: true)
  _$$ArchethicDappSessionWaitingValidatedImplCopyWith<
          _$ArchethicDappSessionWaitingValidatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArchethicDappConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(
            ArchethicDappSession? session, Failure? sessionFailure)
        connected,
    required TResult Function() connecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnected,
    TResult? Function(ArchethicDappSession? session, Failure? sessionFailure)?
        connected,
    TResult? Function()? connecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(ArchethicDappSession? session, Failure? sessionFailure)?
        connected,
    TResult Function()? connecting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connecting value) connecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connecting value)? connecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connecting value)? connecting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchethicDappConnectionStateCopyWith<$Res> {
  factory $ArchethicDappConnectionStateCopyWith(
          ArchethicDappConnectionState value,
          $Res Function(ArchethicDappConnectionState) then) =
      _$ArchethicDappConnectionStateCopyWithImpl<$Res,
          ArchethicDappConnectionState>;
}

/// @nodoc
class _$ArchethicDappConnectionStateCopyWithImpl<$Res,
        $Val extends ArchethicDappConnectionState>
    implements $ArchethicDappConnectionStateCopyWith<$Res> {
  _$ArchethicDappConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisconnectedImplCopyWith<$Res> {
  factory _$$DisconnectedImplCopyWith(
          _$DisconnectedImpl value, $Res Function(_$DisconnectedImpl) then) =
      __$$DisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedImplCopyWithImpl<$Res>
    extends _$ArchethicDappConnectionStateCopyWithImpl<$Res, _$DisconnectedImpl>
    implements _$$DisconnectedImplCopyWith<$Res> {
  __$$DisconnectedImplCopyWithImpl(
      _$DisconnectedImpl _value, $Res Function(_$DisconnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisconnectedImpl extends _Disconnected {
  const _$DisconnectedImpl() : super._();

  @override
  String toString() {
    return 'ArchethicDappConnectionState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(
            ArchethicDappSession? session, Failure? sessionFailure)
        connected,
    required TResult Function() connecting,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnected,
    TResult? Function(ArchethicDappSession? session, Failure? sessionFailure)?
        connected,
    TResult? Function()? connecting,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(ArchethicDappSession? session, Failure? sessionFailure)?
        connected,
    TResult Function()? connecting,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connecting value) connecting,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connecting value)? connecting,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connecting value)? connecting,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected extends ArchethicDappConnectionState {
  const factory _Disconnected() = _$DisconnectedImpl;
  const _Disconnected._() : super._();
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
          _$ConnectedImpl value, $Res Function(_$ConnectedImpl) then) =
      __$$ConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArchethicDappSession? session, Failure? sessionFailure});

  $ArchethicDappSessionCopyWith<$Res>? get session;
  $FailureCopyWith<$Res>? get sessionFailure;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$ArchethicDappConnectionStateCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
      _$ConnectedImpl _value, $Res Function(_$ConnectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? sessionFailure = freezed,
  }) {
    return _then(_$ConnectedImpl(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as ArchethicDappSession?,
      sessionFailure: freezed == sessionFailure
          ? _value.sessionFailure
          : sessionFailure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArchethicDappSessionCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $ArchethicDappSessionCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get sessionFailure {
    if (_value.sessionFailure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.sessionFailure!, (value) {
      return _then(_value.copyWith(sessionFailure: value));
    });
  }
}

/// @nodoc

class _$ConnectedImpl extends _Connected {
  const _$ConnectedImpl({this.session, this.sessionFailure}) : super._();

  @override
  final ArchethicDappSession? session;
  @override
  final Failure? sessionFailure;

  @override
  String toString() {
    return 'ArchethicDappConnectionState.connected(session: $session, sessionFailure: $sessionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectedImpl &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.sessionFailure, sessionFailure) ||
                other.sessionFailure == sessionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session, sessionFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectedImplCopyWith<_$ConnectedImpl> get copyWith =>
      __$$ConnectedImplCopyWithImpl<_$ConnectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(
            ArchethicDappSession? session, Failure? sessionFailure)
        connected,
    required TResult Function() connecting,
  }) {
    return connected(session, sessionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnected,
    TResult? Function(ArchethicDappSession? session, Failure? sessionFailure)?
        connected,
    TResult? Function()? connecting,
  }) {
    return connected?.call(session, sessionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(ArchethicDappSession? session, Failure? sessionFailure)?
        connected,
    TResult Function()? connecting,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(session, sessionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connecting value) connecting,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connecting value)? connecting,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connecting value)? connecting,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected extends ArchethicDappConnectionState {
  const factory _Connected(
      {final ArchethicDappSession? session,
      final Failure? sessionFailure}) = _$ConnectedImpl;
  const _Connected._() : super._();

  ArchethicDappSession? get session;
  Failure? get sessionFailure;
  @JsonKey(ignore: true)
  _$$ConnectedImplCopyWith<_$ConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectingImplCopyWith<$Res> {
  factory _$$ConnectingImplCopyWith(
          _$ConnectingImpl value, $Res Function(_$ConnectingImpl) then) =
      __$$ConnectingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectingImplCopyWithImpl<$Res>
    extends _$ArchethicDappConnectionStateCopyWithImpl<$Res, _$ConnectingImpl>
    implements _$$ConnectingImplCopyWith<$Res> {
  __$$ConnectingImplCopyWithImpl(
      _$ConnectingImpl _value, $Res Function(_$ConnectingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectingImpl extends _Connecting {
  const _$ConnectingImpl() : super._();

  @override
  String toString() {
    return 'ArchethicDappConnectionState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(
            ArchethicDappSession? session, Failure? sessionFailure)
        connected,
    required TResult Function() connecting,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? disconnected,
    TResult? Function(ArchethicDappSession? session, Failure? sessionFailure)?
        connected,
    TResult? Function()? connecting,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(ArchethicDappSession? session, Failure? sessionFailure)?
        connected,
    TResult Function()? connecting,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Connecting value) connecting,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Connecting value)? connecting,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Connected value)? connected,
    TResult Function(_Connecting value)? connecting,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class _Connecting extends ArchethicDappConnectionState {
  const factory _Connecting() = _$ConnectingImpl;
  const _Connecting._() : super._();
}
