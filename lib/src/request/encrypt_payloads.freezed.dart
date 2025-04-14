// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypt_payloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptPayloadsResult _$EncryptPayloadsResultFromJson(
    Map<String, dynamic> json) {
  return _EncryptPayloadsResult.fromJson(json);
}

/// @nodoc
mixin _$EncryptPayloadsResult {
  List<EncryptPayloadsResultDetail> get encryptedPayloads =>
      throw _privateConstructorUsedError;

  /// Serializes this EncryptPayloadsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptPayloadsResultCopyWith<EncryptPayloadsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptPayloadsResultCopyWith<$Res> {
  factory $EncryptPayloadsResultCopyWith(EncryptPayloadsResult value,
          $Res Function(EncryptPayloadsResult) then) =
      _$EncryptPayloadsResultCopyWithImpl<$Res, EncryptPayloadsResult>;
  @useResult
  $Res call({List<EncryptPayloadsResultDetail> encryptedPayloads});
}

/// @nodoc
class _$EncryptPayloadsResultCopyWithImpl<$Res,
        $Val extends EncryptPayloadsResult>
    implements $EncryptPayloadsResultCopyWith<$Res> {
  _$EncryptPayloadsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedPayloads = null,
  }) {
    return _then(_value.copyWith(
      encryptedPayloads: null == encryptedPayloads
          ? _value.encryptedPayloads
          : encryptedPayloads // ignore: cast_nullable_to_non_nullable
              as List<EncryptPayloadsResultDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncryptPayloadsResultImplCopyWith<$Res>
    implements $EncryptPayloadsResultCopyWith<$Res> {
  factory _$$EncryptPayloadsResultImplCopyWith(
          _$EncryptPayloadsResultImpl value,
          $Res Function(_$EncryptPayloadsResultImpl) then) =
      __$$EncryptPayloadsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EncryptPayloadsResultDetail> encryptedPayloads});
}

/// @nodoc
class __$$EncryptPayloadsResultImplCopyWithImpl<$Res>
    extends _$EncryptPayloadsResultCopyWithImpl<$Res,
        _$EncryptPayloadsResultImpl>
    implements _$$EncryptPayloadsResultImplCopyWith<$Res> {
  __$$EncryptPayloadsResultImplCopyWithImpl(_$EncryptPayloadsResultImpl _value,
      $Res Function(_$EncryptPayloadsResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedPayloads = null,
  }) {
    return _then(_$EncryptPayloadsResultImpl(
      encryptedPayloads: null == encryptedPayloads
          ? _value._encryptedPayloads
          : encryptedPayloads // ignore: cast_nullable_to_non_nullable
              as List<EncryptPayloadsResultDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptPayloadsResultImpl extends _EncryptPayloadsResult {
  const _$EncryptPayloadsResultImpl(
      {required final List<EncryptPayloadsResultDetail> encryptedPayloads})
      : _encryptedPayloads = encryptedPayloads,
        super._();

  factory _$EncryptPayloadsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptPayloadsResultImplFromJson(json);

  final List<EncryptPayloadsResultDetail> _encryptedPayloads;
  @override
  List<EncryptPayloadsResultDetail> get encryptedPayloads {
    if (_encryptedPayloads is EqualUnmodifiableListView)
      return _encryptedPayloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_encryptedPayloads);
  }

  @override
  String toString() {
    return 'EncryptPayloadsResult(encryptedPayloads: $encryptedPayloads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptPayloadsResultImpl &&
            const DeepCollectionEquality()
                .equals(other._encryptedPayloads, _encryptedPayloads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_encryptedPayloads));

  /// Create a copy of EncryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptPayloadsResultImplCopyWith<_$EncryptPayloadsResultImpl>
      get copyWith => __$$EncryptPayloadsResultImplCopyWithImpl<
          _$EncryptPayloadsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptPayloadsResultImplToJson(
      this,
    );
  }
}

abstract class _EncryptPayloadsResult extends EncryptPayloadsResult {
  const factory _EncryptPayloadsResult(
      {required final List<EncryptPayloadsResultDetail>
          encryptedPayloads}) = _$EncryptPayloadsResultImpl;
  const _EncryptPayloadsResult._() : super._();

  factory _EncryptPayloadsResult.fromJson(Map<String, dynamic> json) =
      _$EncryptPayloadsResultImpl.fromJson;

  @override
  List<EncryptPayloadsResultDetail> get encryptedPayloads;

  /// Create a copy of EncryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptPayloadsResultImplCopyWith<_$EncryptPayloadsResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EncryptPayloadsResultDetail _$EncryptPayloadsResultDetailFromJson(
    Map<String, dynamic> json) {
  return _EncryptPayloadsResultDetail.fromJson(json);
}

/// @nodoc
mixin _$EncryptPayloadsResultDetail {
  String get encryptedPayload => throw _privateConstructorUsedError;

  /// Serializes this EncryptPayloadsResultDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptPayloadsResultDetailCopyWith<EncryptPayloadsResultDetail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptPayloadsResultDetailCopyWith<$Res> {
  factory $EncryptPayloadsResultDetailCopyWith(
          EncryptPayloadsResultDetail value,
          $Res Function(EncryptPayloadsResultDetail) then) =
      _$EncryptPayloadsResultDetailCopyWithImpl<$Res,
          EncryptPayloadsResultDetail>;
  @useResult
  $Res call({String encryptedPayload});
}

/// @nodoc
class _$EncryptPayloadsResultDetailCopyWithImpl<$Res,
        $Val extends EncryptPayloadsResultDetail>
    implements $EncryptPayloadsResultDetailCopyWith<$Res> {
  _$EncryptPayloadsResultDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedPayload = null,
  }) {
    return _then(_value.copyWith(
      encryptedPayload: null == encryptedPayload
          ? _value.encryptedPayload
          : encryptedPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncryptPayloadsResultDetailImplCopyWith<$Res>
    implements $EncryptPayloadsResultDetailCopyWith<$Res> {
  factory _$$EncryptPayloadsResultDetailImplCopyWith(
          _$EncryptPayloadsResultDetailImpl value,
          $Res Function(_$EncryptPayloadsResultDetailImpl) then) =
      __$$EncryptPayloadsResultDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String encryptedPayload});
}

/// @nodoc
class __$$EncryptPayloadsResultDetailImplCopyWithImpl<$Res>
    extends _$EncryptPayloadsResultDetailCopyWithImpl<$Res,
        _$EncryptPayloadsResultDetailImpl>
    implements _$$EncryptPayloadsResultDetailImplCopyWith<$Res> {
  __$$EncryptPayloadsResultDetailImplCopyWithImpl(
      _$EncryptPayloadsResultDetailImpl _value,
      $Res Function(_$EncryptPayloadsResultDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedPayload = null,
  }) {
    return _then(_$EncryptPayloadsResultDetailImpl(
      encryptedPayload: null == encryptedPayload
          ? _value.encryptedPayload
          : encryptedPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptPayloadsResultDetailImpl extends _EncryptPayloadsResultDetail {
  const _$EncryptPayloadsResultDetailImpl({required this.encryptedPayload})
      : super._();

  factory _$EncryptPayloadsResultDetailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EncryptPayloadsResultDetailImplFromJson(json);

  @override
  final String encryptedPayload;

  @override
  String toString() {
    return 'EncryptPayloadsResultDetail(encryptedPayload: $encryptedPayload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptPayloadsResultDetailImpl &&
            (identical(other.encryptedPayload, encryptedPayload) ||
                other.encryptedPayload == encryptedPayload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, encryptedPayload);

  /// Create a copy of EncryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptPayloadsResultDetailImplCopyWith<_$EncryptPayloadsResultDetailImpl>
      get copyWith => __$$EncryptPayloadsResultDetailImplCopyWithImpl<
          _$EncryptPayloadsResultDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptPayloadsResultDetailImplToJson(
      this,
    );
  }
}

abstract class _EncryptPayloadsResultDetail
    extends EncryptPayloadsResultDetail {
  const factory _EncryptPayloadsResultDetail(
          {required final String encryptedPayload}) =
      _$EncryptPayloadsResultDetailImpl;
  const _EncryptPayloadsResultDetail._() : super._();

  factory _EncryptPayloadsResultDetail.fromJson(Map<String, dynamic> json) =
      _$EncryptPayloadsResultDetailImpl.fromJson;

  @override
  String get encryptedPayload;

  /// Create a copy of EncryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptPayloadsResultDetailImplCopyWith<_$EncryptPayloadsResultDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EncryptPayloadRequestData _$EncryptPayloadRequestDataFromJson(
    Map<String, dynamic> json) {
  return _EncryptPayloadRequestData.fromJson(json);
}

/// @nodoc
mixin _$EncryptPayloadRequestData {
  String get payload => throw _privateConstructorUsedError;
  bool get isHexa => throw _privateConstructorUsedError;

  /// Serializes this EncryptPayloadRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptPayloadRequestDataCopyWith<EncryptPayloadRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptPayloadRequestDataCopyWith<$Res> {
  factory $EncryptPayloadRequestDataCopyWith(EncryptPayloadRequestData value,
          $Res Function(EncryptPayloadRequestData) then) =
      _$EncryptPayloadRequestDataCopyWithImpl<$Res, EncryptPayloadRequestData>;
  @useResult
  $Res call({String payload, bool isHexa});
}

/// @nodoc
class _$EncryptPayloadRequestDataCopyWithImpl<$Res,
        $Val extends EncryptPayloadRequestData>
    implements $EncryptPayloadRequestDataCopyWith<$Res> {
  _$EncryptPayloadRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? isHexa = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      isHexa: null == isHexa
          ? _value.isHexa
          : isHexa // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncryptPayloadRequestDataImplCopyWith<$Res>
    implements $EncryptPayloadRequestDataCopyWith<$Res> {
  factory _$$EncryptPayloadRequestDataImplCopyWith(
          _$EncryptPayloadRequestDataImpl value,
          $Res Function(_$EncryptPayloadRequestDataImpl) then) =
      __$$EncryptPayloadRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payload, bool isHexa});
}

/// @nodoc
class __$$EncryptPayloadRequestDataImplCopyWithImpl<$Res>
    extends _$EncryptPayloadRequestDataCopyWithImpl<$Res,
        _$EncryptPayloadRequestDataImpl>
    implements _$$EncryptPayloadRequestDataImplCopyWith<$Res> {
  __$$EncryptPayloadRequestDataImplCopyWithImpl(
      _$EncryptPayloadRequestDataImpl _value,
      $Res Function(_$EncryptPayloadRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? isHexa = null,
  }) {
    return _then(_$EncryptPayloadRequestDataImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      isHexa: null == isHexa
          ? _value.isHexa
          : isHexa // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptPayloadRequestDataImpl extends _EncryptPayloadRequestData {
  const _$EncryptPayloadRequestDataImpl(
      {required this.payload, required this.isHexa})
      : super._();

  factory _$EncryptPayloadRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptPayloadRequestDataImplFromJson(json);

  @override
  final String payload;
  @override
  final bool isHexa;

  @override
  String toString() {
    return 'EncryptPayloadRequestData(payload: $payload, isHexa: $isHexa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptPayloadRequestDataImpl &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.isHexa, isHexa) || other.isHexa == isHexa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, payload, isHexa);

  /// Create a copy of EncryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptPayloadRequestDataImplCopyWith<_$EncryptPayloadRequestDataImpl>
      get copyWith => __$$EncryptPayloadRequestDataImplCopyWithImpl<
          _$EncryptPayloadRequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptPayloadRequestDataImplToJson(
      this,
    );
  }
}

abstract class _EncryptPayloadRequestData extends EncryptPayloadRequestData {
  const factory _EncryptPayloadRequestData(
      {required final String payload,
      required final bool isHexa}) = _$EncryptPayloadRequestDataImpl;
  const _EncryptPayloadRequestData._() : super._();

  factory _EncryptPayloadRequestData.fromJson(Map<String, dynamic> json) =
      _$EncryptPayloadRequestDataImpl.fromJson;

  @override
  String get payload;
  @override
  bool get isHexa;

  /// Create a copy of EncryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptPayloadRequestDataImplCopyWith<_$EncryptPayloadRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EncryptPayloadRequest _$EncryptPayloadRequestFromJson(
    Map<String, dynamic> json) {
  return _EncryptPayloadRequest.fromJson(json);
}

/// @nodoc
mixin _$EncryptPayloadRequest {
  /// Service name to identify the derivation path to use
  String get serviceName => throw _privateConstructorUsedError;

  /// Additional information to add to a service derivation path (optional - default to empty)
  String get pathSuffix => throw _privateConstructorUsedError;

  /// - List of payloads to encrypt
  List<EncryptPayloadRequestData> get payloads =>
      throw _privateConstructorUsedError;

  /// Serializes this EncryptPayloadRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptPayloadRequestCopyWith<EncryptPayloadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptPayloadRequestCopyWith<$Res> {
  factory $EncryptPayloadRequestCopyWith(EncryptPayloadRequest value,
          $Res Function(EncryptPayloadRequest) then) =
      _$EncryptPayloadRequestCopyWithImpl<$Res, EncryptPayloadRequest>;
  @useResult
  $Res call(
      {String serviceName,
      String pathSuffix,
      List<EncryptPayloadRequestData> payloads});
}

/// @nodoc
class _$EncryptPayloadRequestCopyWithImpl<$Res,
        $Val extends EncryptPayloadRequest>
    implements $EncryptPayloadRequestCopyWith<$Res> {
  _$EncryptPayloadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? pathSuffix = null,
    Object? payloads = null,
  }) {
    return _then(_value.copyWith(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      pathSuffix: null == pathSuffix
          ? _value.pathSuffix
          : pathSuffix // ignore: cast_nullable_to_non_nullable
              as String,
      payloads: null == payloads
          ? _value.payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<EncryptPayloadRequestData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncryptPayloadRequestImplCopyWith<$Res>
    implements $EncryptPayloadRequestCopyWith<$Res> {
  factory _$$EncryptPayloadRequestImplCopyWith(
          _$EncryptPayloadRequestImpl value,
          $Res Function(_$EncryptPayloadRequestImpl) then) =
      __$$EncryptPayloadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serviceName,
      String pathSuffix,
      List<EncryptPayloadRequestData> payloads});
}

/// @nodoc
class __$$EncryptPayloadRequestImplCopyWithImpl<$Res>
    extends _$EncryptPayloadRequestCopyWithImpl<$Res,
        _$EncryptPayloadRequestImpl>
    implements _$$EncryptPayloadRequestImplCopyWith<$Res> {
  __$$EncryptPayloadRequestImplCopyWithImpl(_$EncryptPayloadRequestImpl _value,
      $Res Function(_$EncryptPayloadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? pathSuffix = null,
    Object? payloads = null,
  }) {
    return _then(_$EncryptPayloadRequestImpl(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      pathSuffix: null == pathSuffix
          ? _value.pathSuffix
          : pathSuffix // ignore: cast_nullable_to_non_nullable
              as String,
      payloads: null == payloads
          ? _value._payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<EncryptPayloadRequestData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptPayloadRequestImpl extends _EncryptPayloadRequest {
  const _$EncryptPayloadRequestImpl(
      {required this.serviceName,
      this.pathSuffix = '',
      final List<EncryptPayloadRequestData> payloads = const []})
      : _payloads = payloads,
        super._();

  factory _$EncryptPayloadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptPayloadRequestImplFromJson(json);

  /// Service name to identify the derivation path to use
  @override
  final String serviceName;

  /// Additional information to add to a service derivation path (optional - default to empty)
  @override
  @JsonKey()
  final String pathSuffix;

  /// - List of payloads to encrypt
  final List<EncryptPayloadRequestData> _payloads;

  /// - List of payloads to encrypt
  @override
  @JsonKey()
  List<EncryptPayloadRequestData> get payloads {
    if (_payloads is EqualUnmodifiableListView) return _payloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloads);
  }

  @override
  String toString() {
    return 'EncryptPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, payloads: $payloads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptPayloadRequestImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.pathSuffix, pathSuffix) ||
                other.pathSuffix == pathSuffix) &&
            const DeepCollectionEquality().equals(other._payloads, _payloads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, serviceName, pathSuffix,
      const DeepCollectionEquality().hash(_payloads));

  /// Create a copy of EncryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptPayloadRequestImplCopyWith<_$EncryptPayloadRequestImpl>
      get copyWith => __$$EncryptPayloadRequestImplCopyWithImpl<
          _$EncryptPayloadRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptPayloadRequestImplToJson(
      this,
    );
  }
}

abstract class _EncryptPayloadRequest extends EncryptPayloadRequest {
  const factory _EncryptPayloadRequest(
          {required final String serviceName,
          final String pathSuffix,
          final List<EncryptPayloadRequestData> payloads}) =
      _$EncryptPayloadRequestImpl;
  const _EncryptPayloadRequest._() : super._();

  factory _EncryptPayloadRequest.fromJson(Map<String, dynamic> json) =
      _$EncryptPayloadRequestImpl.fromJson;

  /// Service name to identify the derivation path to use
  @override
  String get serviceName;

  /// Additional information to add to a service derivation path (optional - default to empty)
  @override
  String get pathSuffix;

  /// - List of payloads to encrypt
  @override
  List<EncryptPayloadRequestData> get payloads;

  /// Create a copy of EncryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptPayloadRequestImplCopyWith<_$EncryptPayloadRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
