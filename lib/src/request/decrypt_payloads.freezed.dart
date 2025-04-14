// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decrypt_payloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DecryptPayloadsResult _$DecryptPayloadsResultFromJson(
    Map<String, dynamic> json) {
  return _DecryptPayloadsResult.fromJson(json);
}

/// @nodoc
mixin _$DecryptPayloadsResult {
  List<DecryptPayloadsResultDetail> get decryptedPayloads =>
      throw _privateConstructorUsedError;

  /// Serializes this DecryptPayloadsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecryptPayloadsResultCopyWith<DecryptPayloadsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptPayloadsResultCopyWith<$Res> {
  factory $DecryptPayloadsResultCopyWith(DecryptPayloadsResult value,
          $Res Function(DecryptPayloadsResult) then) =
      _$DecryptPayloadsResultCopyWithImpl<$Res, DecryptPayloadsResult>;
  @useResult
  $Res call({List<DecryptPayloadsResultDetail> decryptedPayloads});
}

/// @nodoc
class _$DecryptPayloadsResultCopyWithImpl<$Res,
        $Val extends DecryptPayloadsResult>
    implements $DecryptPayloadsResultCopyWith<$Res> {
  _$DecryptPayloadsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decryptedPayloads = null,
  }) {
    return _then(_value.copyWith(
      decryptedPayloads: null == decryptedPayloads
          ? _value.decryptedPayloads
          : decryptedPayloads // ignore: cast_nullable_to_non_nullable
              as List<DecryptPayloadsResultDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecryptPayloadsResultImplCopyWith<$Res>
    implements $DecryptPayloadsResultCopyWith<$Res> {
  factory _$$DecryptPayloadsResultImplCopyWith(
          _$DecryptPayloadsResultImpl value,
          $Res Function(_$DecryptPayloadsResultImpl) then) =
      __$$DecryptPayloadsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DecryptPayloadsResultDetail> decryptedPayloads});
}

/// @nodoc
class __$$DecryptPayloadsResultImplCopyWithImpl<$Res>
    extends _$DecryptPayloadsResultCopyWithImpl<$Res,
        _$DecryptPayloadsResultImpl>
    implements _$$DecryptPayloadsResultImplCopyWith<$Res> {
  __$$DecryptPayloadsResultImplCopyWithImpl(_$DecryptPayloadsResultImpl _value,
      $Res Function(_$DecryptPayloadsResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decryptedPayloads = null,
  }) {
    return _then(_$DecryptPayloadsResultImpl(
      decryptedPayloads: null == decryptedPayloads
          ? _value._decryptedPayloads
          : decryptedPayloads // ignore: cast_nullable_to_non_nullable
              as List<DecryptPayloadsResultDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecryptPayloadsResultImpl extends _DecryptPayloadsResult {
  const _$DecryptPayloadsResultImpl(
      {required final List<DecryptPayloadsResultDetail> decryptedPayloads})
      : _decryptedPayloads = decryptedPayloads,
        super._();

  factory _$DecryptPayloadsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecryptPayloadsResultImplFromJson(json);

  final List<DecryptPayloadsResultDetail> _decryptedPayloads;
  @override
  List<DecryptPayloadsResultDetail> get decryptedPayloads {
    if (_decryptedPayloads is EqualUnmodifiableListView)
      return _decryptedPayloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decryptedPayloads);
  }

  @override
  String toString() {
    return 'DecryptPayloadsResult(decryptedPayloads: $decryptedPayloads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptPayloadsResultImpl &&
            const DeepCollectionEquality()
                .equals(other._decryptedPayloads, _decryptedPayloads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_decryptedPayloads));

  /// Create a copy of DecryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptPayloadsResultImplCopyWith<_$DecryptPayloadsResultImpl>
      get copyWith => __$$DecryptPayloadsResultImplCopyWithImpl<
          _$DecryptPayloadsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecryptPayloadsResultImplToJson(
      this,
    );
  }
}

abstract class _DecryptPayloadsResult extends DecryptPayloadsResult {
  const factory _DecryptPayloadsResult(
      {required final List<DecryptPayloadsResultDetail>
          decryptedPayloads}) = _$DecryptPayloadsResultImpl;
  const _DecryptPayloadsResult._() : super._();

  factory _DecryptPayloadsResult.fromJson(Map<String, dynamic> json) =
      _$DecryptPayloadsResultImpl.fromJson;

  @override
  List<DecryptPayloadsResultDetail> get decryptedPayloads;

  /// Create a copy of DecryptPayloadsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptPayloadsResultImplCopyWith<_$DecryptPayloadsResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DecryptPayloadsResultDetail _$DecryptPayloadsResultDetailFromJson(
    Map<String, dynamic> json) {
  return _DecryptPayloadsResultDetail.fromJson(json);
}

/// @nodoc
mixin _$DecryptPayloadsResultDetail {
  String get decryptedPayload => throw _privateConstructorUsedError;

  /// Serializes this DecryptPayloadsResultDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecryptPayloadsResultDetailCopyWith<DecryptPayloadsResultDetail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptPayloadsResultDetailCopyWith<$Res> {
  factory $DecryptPayloadsResultDetailCopyWith(
          DecryptPayloadsResultDetail value,
          $Res Function(DecryptPayloadsResultDetail) then) =
      _$DecryptPayloadsResultDetailCopyWithImpl<$Res,
          DecryptPayloadsResultDetail>;
  @useResult
  $Res call({String decryptedPayload});
}

/// @nodoc
class _$DecryptPayloadsResultDetailCopyWithImpl<$Res,
        $Val extends DecryptPayloadsResultDetail>
    implements $DecryptPayloadsResultDetailCopyWith<$Res> {
  _$DecryptPayloadsResultDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decryptedPayload = null,
  }) {
    return _then(_value.copyWith(
      decryptedPayload: null == decryptedPayload
          ? _value.decryptedPayload
          : decryptedPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecryptPayloadsResultDetailImplCopyWith<$Res>
    implements $DecryptPayloadsResultDetailCopyWith<$Res> {
  factory _$$DecryptPayloadsResultDetailImplCopyWith(
          _$DecryptPayloadsResultDetailImpl value,
          $Res Function(_$DecryptPayloadsResultDetailImpl) then) =
      __$$DecryptPayloadsResultDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String decryptedPayload});
}

/// @nodoc
class __$$DecryptPayloadsResultDetailImplCopyWithImpl<$Res>
    extends _$DecryptPayloadsResultDetailCopyWithImpl<$Res,
        _$DecryptPayloadsResultDetailImpl>
    implements _$$DecryptPayloadsResultDetailImplCopyWith<$Res> {
  __$$DecryptPayloadsResultDetailImplCopyWithImpl(
      _$DecryptPayloadsResultDetailImpl _value,
      $Res Function(_$DecryptPayloadsResultDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decryptedPayload = null,
  }) {
    return _then(_$DecryptPayloadsResultDetailImpl(
      decryptedPayload: null == decryptedPayload
          ? _value.decryptedPayload
          : decryptedPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecryptPayloadsResultDetailImpl extends _DecryptPayloadsResultDetail {
  const _$DecryptPayloadsResultDetailImpl({required this.decryptedPayload})
      : super._();

  factory _$DecryptPayloadsResultDetailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DecryptPayloadsResultDetailImplFromJson(json);

  @override
  final String decryptedPayload;

  @override
  String toString() {
    return 'DecryptPayloadsResultDetail(decryptedPayload: $decryptedPayload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptPayloadsResultDetailImpl &&
            (identical(other.decryptedPayload, decryptedPayload) ||
                other.decryptedPayload == decryptedPayload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, decryptedPayload);

  /// Create a copy of DecryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptPayloadsResultDetailImplCopyWith<_$DecryptPayloadsResultDetailImpl>
      get copyWith => __$$DecryptPayloadsResultDetailImplCopyWithImpl<
          _$DecryptPayloadsResultDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecryptPayloadsResultDetailImplToJson(
      this,
    );
  }
}

abstract class _DecryptPayloadsResultDetail
    extends DecryptPayloadsResultDetail {
  const factory _DecryptPayloadsResultDetail(
          {required final String decryptedPayload}) =
      _$DecryptPayloadsResultDetailImpl;
  const _DecryptPayloadsResultDetail._() : super._();

  factory _DecryptPayloadsResultDetail.fromJson(Map<String, dynamic> json) =
      _$DecryptPayloadsResultDetailImpl.fromJson;

  @override
  String get decryptedPayload;

  /// Create a copy of DecryptPayloadsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptPayloadsResultDetailImplCopyWith<_$DecryptPayloadsResultDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DecryptPayloadRequestData _$DecryptPayloadRequestDataFromJson(
    Map<String, dynamic> json) {
  return _DecryptPayloadRequestData.fromJson(json);
}

/// @nodoc
mixin _$DecryptPayloadRequestData {
  String get payload => throw _privateConstructorUsedError;
  bool get isHexa => throw _privateConstructorUsedError;

  /// Serializes this DecryptPayloadRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecryptPayloadRequestDataCopyWith<DecryptPayloadRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptPayloadRequestDataCopyWith<$Res> {
  factory $DecryptPayloadRequestDataCopyWith(DecryptPayloadRequestData value,
          $Res Function(DecryptPayloadRequestData) then) =
      _$DecryptPayloadRequestDataCopyWithImpl<$Res, DecryptPayloadRequestData>;
  @useResult
  $Res call({String payload, bool isHexa});
}

/// @nodoc
class _$DecryptPayloadRequestDataCopyWithImpl<$Res,
        $Val extends DecryptPayloadRequestData>
    implements $DecryptPayloadRequestDataCopyWith<$Res> {
  _$DecryptPayloadRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptPayloadRequestData
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
abstract class _$$DecryptPayloadRequestDataImplCopyWith<$Res>
    implements $DecryptPayloadRequestDataCopyWith<$Res> {
  factory _$$DecryptPayloadRequestDataImplCopyWith(
          _$DecryptPayloadRequestDataImpl value,
          $Res Function(_$DecryptPayloadRequestDataImpl) then) =
      __$$DecryptPayloadRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payload, bool isHexa});
}

/// @nodoc
class __$$DecryptPayloadRequestDataImplCopyWithImpl<$Res>
    extends _$DecryptPayloadRequestDataCopyWithImpl<$Res,
        _$DecryptPayloadRequestDataImpl>
    implements _$$DecryptPayloadRequestDataImplCopyWith<$Res> {
  __$$DecryptPayloadRequestDataImplCopyWithImpl(
      _$DecryptPayloadRequestDataImpl _value,
      $Res Function(_$DecryptPayloadRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? isHexa = null,
  }) {
    return _then(_$DecryptPayloadRequestDataImpl(
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
class _$DecryptPayloadRequestDataImpl extends _DecryptPayloadRequestData {
  const _$DecryptPayloadRequestDataImpl(
      {required this.payload, required this.isHexa})
      : super._();

  factory _$DecryptPayloadRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecryptPayloadRequestDataImplFromJson(json);

  @override
  final String payload;
  @override
  final bool isHexa;

  @override
  String toString() {
    return 'DecryptPayloadRequestData(payload: $payload, isHexa: $isHexa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptPayloadRequestDataImpl &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.isHexa, isHexa) || other.isHexa == isHexa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, payload, isHexa);

  /// Create a copy of DecryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptPayloadRequestDataImplCopyWith<_$DecryptPayloadRequestDataImpl>
      get copyWith => __$$DecryptPayloadRequestDataImplCopyWithImpl<
          _$DecryptPayloadRequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecryptPayloadRequestDataImplToJson(
      this,
    );
  }
}

abstract class _DecryptPayloadRequestData extends DecryptPayloadRequestData {
  const factory _DecryptPayloadRequestData(
      {required final String payload,
      required final bool isHexa}) = _$DecryptPayloadRequestDataImpl;
  const _DecryptPayloadRequestData._() : super._();

  factory _DecryptPayloadRequestData.fromJson(Map<String, dynamic> json) =
      _$DecryptPayloadRequestDataImpl.fromJson;

  @override
  String get payload;
  @override
  bool get isHexa;

  /// Create a copy of DecryptPayloadRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptPayloadRequestDataImplCopyWith<_$DecryptPayloadRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DecryptPayloadRequest _$DecryptPayloadRequestFromJson(
    Map<String, dynamic> json) {
  return _DecryptPayloadRequest.fromJson(json);
}

/// @nodoc
mixin _$DecryptPayloadRequest {
  /// Service name to identify the derivation path to use
  String get serviceName => throw _privateConstructorUsedError;

  /// Additional information to add to a service derivation path (optional - default to empty)
  String get pathSuffix => throw _privateConstructorUsedError;

  /// Description to explain the decryption in multiple languages (key=Locale, value=description)
  Map<String, dynamic> get description => throw _privateConstructorUsedError;

  /// - List of payloads to decrypt
  List<DecryptPayloadRequestData> get payloads =>
      throw _privateConstructorUsedError;

  /// Serializes this DecryptPayloadRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecryptPayloadRequestCopyWith<DecryptPayloadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptPayloadRequestCopyWith<$Res> {
  factory $DecryptPayloadRequestCopyWith(DecryptPayloadRequest value,
          $Res Function(DecryptPayloadRequest) then) =
      _$DecryptPayloadRequestCopyWithImpl<$Res, DecryptPayloadRequest>;
  @useResult
  $Res call(
      {String serviceName,
      String pathSuffix,
      Map<String, dynamic> description,
      List<DecryptPayloadRequestData> payloads});
}

/// @nodoc
class _$DecryptPayloadRequestCopyWithImpl<$Res,
        $Val extends DecryptPayloadRequest>
    implements $DecryptPayloadRequestCopyWith<$Res> {
  _$DecryptPayloadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? pathSuffix = null,
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      payloads: null == payloads
          ? _value.payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<DecryptPayloadRequestData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecryptPayloadRequestImplCopyWith<$Res>
    implements $DecryptPayloadRequestCopyWith<$Res> {
  factory _$$DecryptPayloadRequestImplCopyWith(
          _$DecryptPayloadRequestImpl value,
          $Res Function(_$DecryptPayloadRequestImpl) then) =
      __$$DecryptPayloadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serviceName,
      String pathSuffix,
      Map<String, dynamic> description,
      List<DecryptPayloadRequestData> payloads});
}

/// @nodoc
class __$$DecryptPayloadRequestImplCopyWithImpl<$Res>
    extends _$DecryptPayloadRequestCopyWithImpl<$Res,
        _$DecryptPayloadRequestImpl>
    implements _$$DecryptPayloadRequestImplCopyWith<$Res> {
  __$$DecryptPayloadRequestImplCopyWithImpl(_$DecryptPayloadRequestImpl _value,
      $Res Function(_$DecryptPayloadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? pathSuffix = null,
    Object? description = null,
    Object? payloads = null,
  }) {
    return _then(_$DecryptPayloadRequestImpl(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      pathSuffix: null == pathSuffix
          ? _value.pathSuffix
          : pathSuffix // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      payloads: null == payloads
          ? _value._payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<DecryptPayloadRequestData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecryptPayloadRequestImpl extends _DecryptPayloadRequest {
  const _$DecryptPayloadRequestImpl(
      {required this.serviceName,
      this.pathSuffix = '',
      final Map<String, dynamic> description = const {},
      final List<DecryptPayloadRequestData> payloads = const []})
      : _description = description,
        _payloads = payloads,
        super._();

  factory _$DecryptPayloadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecryptPayloadRequestImplFromJson(json);

  /// Service name to identify the derivation path to use
  @override
  final String serviceName;

  /// Additional information to add to a service derivation path (optional - default to empty)
  @override
  @JsonKey()
  final String pathSuffix;

  /// Description to explain the decryption in multiple languages (key=Locale, value=description)
  final Map<String, dynamic> _description;

  /// Description to explain the decryption in multiple languages (key=Locale, value=description)
  @override
  @JsonKey()
  Map<String, dynamic> get description {
    if (_description is EqualUnmodifiableMapView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_description);
  }

  /// - List of payloads to decrypt
  final List<DecryptPayloadRequestData> _payloads;

  /// - List of payloads to decrypt
  @override
  @JsonKey()
  List<DecryptPayloadRequestData> get payloads {
    if (_payloads is EqualUnmodifiableListView) return _payloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloads);
  }

  @override
  String toString() {
    return 'DecryptPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, payloads: $payloads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptPayloadRequestImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.pathSuffix, pathSuffix) ||
                other.pathSuffix == pathSuffix) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality().equals(other._payloads, _payloads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      serviceName,
      pathSuffix,
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(_payloads));

  /// Create a copy of DecryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptPayloadRequestImplCopyWith<_$DecryptPayloadRequestImpl>
      get copyWith => __$$DecryptPayloadRequestImplCopyWithImpl<
          _$DecryptPayloadRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecryptPayloadRequestImplToJson(
      this,
    );
  }
}

abstract class _DecryptPayloadRequest extends DecryptPayloadRequest {
  const factory _DecryptPayloadRequest(
          {required final String serviceName,
          final String pathSuffix,
          final Map<String, dynamic> description,
          final List<DecryptPayloadRequestData> payloads}) =
      _$DecryptPayloadRequestImpl;
  const _DecryptPayloadRequest._() : super._();

  factory _DecryptPayloadRequest.fromJson(Map<String, dynamic> json) =
      _$DecryptPayloadRequestImpl.fromJson;

  /// Service name to identify the derivation path to use
  @override
  String get serviceName;

  /// Additional information to add to a service derivation path (optional - default to empty)
  @override
  String get pathSuffix;

  /// Description to explain the decryption in multiple languages (key=Locale, value=description)
  @override
  Map<String, dynamic> get description;

  /// - List of payloads to decrypt
  @override
  List<DecryptPayloadRequestData> get payloads;

  /// Create a copy of DecryptPayloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptPayloadRequestImplCopyWith<_$DecryptPayloadRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
