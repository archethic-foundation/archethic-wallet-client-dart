// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_payloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignPayloadsResult _$SignPayloadsResultFromJson(Map<String, dynamic> json) {
  return _SignPayloadsResult.fromJson(json);
}

/// @nodoc
mixin _$SignPayloadsResult {
  List<SignPayloadsResultDetail> get signedPayloads =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignPayloadsResultCopyWith<SignPayloadsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignPayloadsResultCopyWith<$Res> {
  factory $SignPayloadsResultCopyWith(
          SignPayloadsResult value, $Res Function(SignPayloadsResult) then) =
      _$SignPayloadsResultCopyWithImpl<$Res, SignPayloadsResult>;
  @useResult
  $Res call({List<SignPayloadsResultDetail> signedPayloads});
}

/// @nodoc
class _$SignPayloadsResultCopyWithImpl<$Res, $Val extends SignPayloadsResult>
    implements $SignPayloadsResultCopyWith<$Res> {
  _$SignPayloadsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedPayloads = null,
  }) {
    return _then(_value.copyWith(
      signedPayloads: null == signedPayloads
          ? _value.signedPayloads
          : signedPayloads // ignore: cast_nullable_to_non_nullable
              as List<SignPayloadsResultDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignPayloadsResultImplCopyWith<$Res>
    implements $SignPayloadsResultCopyWith<$Res> {
  factory _$$SignPayloadsResultImplCopyWith(_$SignPayloadsResultImpl value,
          $Res Function(_$SignPayloadsResultImpl) then) =
      __$$SignPayloadsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SignPayloadsResultDetail> signedPayloads});
}

/// @nodoc
class __$$SignPayloadsResultImplCopyWithImpl<$Res>
    extends _$SignPayloadsResultCopyWithImpl<$Res, _$SignPayloadsResultImpl>
    implements _$$SignPayloadsResultImplCopyWith<$Res> {
  __$$SignPayloadsResultImplCopyWithImpl(_$SignPayloadsResultImpl _value,
      $Res Function(_$SignPayloadsResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedPayloads = null,
  }) {
    return _then(_$SignPayloadsResultImpl(
      signedPayloads: null == signedPayloads
          ? _value._signedPayloads
          : signedPayloads // ignore: cast_nullable_to_non_nullable
              as List<SignPayloadsResultDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignPayloadsResultImpl extends _SignPayloadsResult {
  const _$SignPayloadsResultImpl(
      {required final List<SignPayloadsResultDetail> signedPayloads})
      : _signedPayloads = signedPayloads,
        super._();

  factory _$SignPayloadsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignPayloadsResultImplFromJson(json);

  final List<SignPayloadsResultDetail> _signedPayloads;
  @override
  List<SignPayloadsResultDetail> get signedPayloads {
    if (_signedPayloads is EqualUnmodifiableListView) return _signedPayloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signedPayloads);
  }

  @override
  String toString() {
    return 'SignPayloadsResult(signedPayloads: $signedPayloads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignPayloadsResultImpl &&
            const DeepCollectionEquality()
                .equals(other._signedPayloads, _signedPayloads));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_signedPayloads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignPayloadsResultImplCopyWith<_$SignPayloadsResultImpl> get copyWith =>
      __$$SignPayloadsResultImplCopyWithImpl<_$SignPayloadsResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignPayloadsResultImplToJson(
      this,
    );
  }
}

abstract class _SignPayloadsResult extends SignPayloadsResult {
  const factory _SignPayloadsResult(
          {required final List<SignPayloadsResultDetail> signedPayloads}) =
      _$SignPayloadsResultImpl;
  const _SignPayloadsResult._() : super._();

  factory _SignPayloadsResult.fromJson(Map<String, dynamic> json) =
      _$SignPayloadsResultImpl.fromJson;

  @override
  List<SignPayloadsResultDetail> get signedPayloads;
  @override
  @JsonKey(ignore: true)
  _$$SignPayloadsResultImplCopyWith<_$SignPayloadsResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignPayloadsResultDetail _$SignPayloadsResultDetailFromJson(
    Map<String, dynamic> json) {
  return _SignPayloadsResultDetail.fromJson(json);
}

/// @nodoc
mixin _$SignPayloadsResultDetail {
  /// Signature of payload
  String get signedPayload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignPayloadsResultDetailCopyWith<SignPayloadsResultDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignPayloadsResultDetailCopyWith<$Res> {
  factory $SignPayloadsResultDetailCopyWith(SignPayloadsResultDetail value,
          $Res Function(SignPayloadsResultDetail) then) =
      _$SignPayloadsResultDetailCopyWithImpl<$Res, SignPayloadsResultDetail>;
  @useResult
  $Res call({String signedPayload});
}

/// @nodoc
class _$SignPayloadsResultDetailCopyWithImpl<$Res,
        $Val extends SignPayloadsResultDetail>
    implements $SignPayloadsResultDetailCopyWith<$Res> {
  _$SignPayloadsResultDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedPayload = null,
  }) {
    return _then(_value.copyWith(
      signedPayload: null == signedPayload
          ? _value.signedPayload
          : signedPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignPayloadsResultDetailImplCopyWith<$Res>
    implements $SignPayloadsResultDetailCopyWith<$Res> {
  factory _$$SignPayloadsResultDetailImplCopyWith(
          _$SignPayloadsResultDetailImpl value,
          $Res Function(_$SignPayloadsResultDetailImpl) then) =
      __$$SignPayloadsResultDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String signedPayload});
}

/// @nodoc
class __$$SignPayloadsResultDetailImplCopyWithImpl<$Res>
    extends _$SignPayloadsResultDetailCopyWithImpl<$Res,
        _$SignPayloadsResultDetailImpl>
    implements _$$SignPayloadsResultDetailImplCopyWith<$Res> {
  __$$SignPayloadsResultDetailImplCopyWithImpl(
      _$SignPayloadsResultDetailImpl _value,
      $Res Function(_$SignPayloadsResultDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedPayload = null,
  }) {
    return _then(_$SignPayloadsResultDetailImpl(
      signedPayload: null == signedPayload
          ? _value.signedPayload
          : signedPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignPayloadsResultDetailImpl extends _SignPayloadsResultDetail {
  const _$SignPayloadsResultDetailImpl({required this.signedPayload})
      : super._();

  factory _$SignPayloadsResultDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignPayloadsResultDetailImplFromJson(json);

  /// Signature of payload
  @override
  final String signedPayload;

  @override
  String toString() {
    return 'SignPayloadsResultDetail(signedPayload: $signedPayload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignPayloadsResultDetailImpl &&
            (identical(other.signedPayload, signedPayload) ||
                other.signedPayload == signedPayload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, signedPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignPayloadsResultDetailImplCopyWith<_$SignPayloadsResultDetailImpl>
      get copyWith => __$$SignPayloadsResultDetailImplCopyWithImpl<
          _$SignPayloadsResultDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignPayloadsResultDetailImplToJson(
      this,
    );
  }
}

abstract class _SignPayloadsResultDetail extends SignPayloadsResultDetail {
  const factory _SignPayloadsResultDetail(
      {required final String signedPayload}) = _$SignPayloadsResultDetailImpl;
  const _SignPayloadsResultDetail._() : super._();

  factory _SignPayloadsResultDetail.fromJson(Map<String, dynamic> json) =
      _$SignPayloadsResultDetailImpl.fromJson;

  @override

  /// Signature of payload
  String get signedPayload;
  @override
  @JsonKey(ignore: true)
  _$$SignPayloadsResultDetailImplCopyWith<_$SignPayloadsResultDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignPayloadRequestData _$SignPayloadRequestDataFromJson(
    Map<String, dynamic> json) {
  return _SignPayloadRequestData.fromJson(json);
}

/// @nodoc
mixin _$SignPayloadRequestData {
  String get payload => throw _privateConstructorUsedError;
  bool get isHexa => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignPayloadRequestDataCopyWith<SignPayloadRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignPayloadRequestDataCopyWith<$Res> {
  factory $SignPayloadRequestDataCopyWith(SignPayloadRequestData value,
          $Res Function(SignPayloadRequestData) then) =
      _$SignPayloadRequestDataCopyWithImpl<$Res, SignPayloadRequestData>;
  @useResult
  $Res call({String payload, bool isHexa});
}

/// @nodoc
class _$SignPayloadRequestDataCopyWithImpl<$Res,
        $Val extends SignPayloadRequestData>
    implements $SignPayloadRequestDataCopyWith<$Res> {
  _$SignPayloadRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$SignPayloadRequestDataImplCopyWith<$Res>
    implements $SignPayloadRequestDataCopyWith<$Res> {
  factory _$$SignPayloadRequestDataImplCopyWith(
          _$SignPayloadRequestDataImpl value,
          $Res Function(_$SignPayloadRequestDataImpl) then) =
      __$$SignPayloadRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payload, bool isHexa});
}

/// @nodoc
class __$$SignPayloadRequestDataImplCopyWithImpl<$Res>
    extends _$SignPayloadRequestDataCopyWithImpl<$Res,
        _$SignPayloadRequestDataImpl>
    implements _$$SignPayloadRequestDataImplCopyWith<$Res> {
  __$$SignPayloadRequestDataImplCopyWithImpl(
      _$SignPayloadRequestDataImpl _value,
      $Res Function(_$SignPayloadRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? isHexa = null,
  }) {
    return _then(_$SignPayloadRequestDataImpl(
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
class _$SignPayloadRequestDataImpl extends _SignPayloadRequestData {
  const _$SignPayloadRequestDataImpl(
      {required this.payload, required this.isHexa})
      : super._();

  factory _$SignPayloadRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignPayloadRequestDataImplFromJson(json);

  @override
  final String payload;
  @override
  final bool isHexa;

  @override
  String toString() {
    return 'SignPayloadRequestData(payload: $payload, isHexa: $isHexa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignPayloadRequestDataImpl &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.isHexa, isHexa) || other.isHexa == isHexa));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload, isHexa);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignPayloadRequestDataImplCopyWith<_$SignPayloadRequestDataImpl>
      get copyWith => __$$SignPayloadRequestDataImplCopyWithImpl<
          _$SignPayloadRequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignPayloadRequestDataImplToJson(
      this,
    );
  }
}

abstract class _SignPayloadRequestData extends SignPayloadRequestData {
  const factory _SignPayloadRequestData(
      {required final String payload,
      required final bool isHexa}) = _$SignPayloadRequestDataImpl;
  const _SignPayloadRequestData._() : super._();

  factory _SignPayloadRequestData.fromJson(Map<String, dynamic> json) =
      _$SignPayloadRequestDataImpl.fromJson;

  @override
  String get payload;
  @override
  bool get isHexa;
  @override
  @JsonKey(ignore: true)
  _$$SignPayloadRequestDataImplCopyWith<_$SignPayloadRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignPayloadRequest _$SignPayloadRequestFromJson(Map<String, dynamic> json) {
  return _SignPayloadRequest.fromJson(json);
}

/// @nodoc
mixin _$SignPayloadRequest {
  /// Service name to identify the derivation path to use
  String get serviceName => throw _privateConstructorUsedError;

  /// Additional information to add to a service derivation path (optional - default to empty)
  String get pathSuffix => throw _privateConstructorUsedError;

  /// Description to explain the signature in multiple languages (key=Locale, value=description)
  Map<String, dynamic> get description => throw _privateConstructorUsedError;

  /// - List of payloads to sign
  List<SignPayloadRequestData> get payloads =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignPayloadRequestCopyWith<SignPayloadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignPayloadRequestCopyWith<$Res> {
  factory $SignPayloadRequestCopyWith(
          SignPayloadRequest value, $Res Function(SignPayloadRequest) then) =
      _$SignPayloadRequestCopyWithImpl<$Res, SignPayloadRequest>;
  @useResult
  $Res call(
      {String serviceName,
      String pathSuffix,
      Map<String, dynamic> description,
      List<SignPayloadRequestData> payloads});
}

/// @nodoc
class _$SignPayloadRequestCopyWithImpl<$Res, $Val extends SignPayloadRequest>
    implements $SignPayloadRequestCopyWith<$Res> {
  _$SignPayloadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as List<SignPayloadRequestData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignPayloadRequestImplCopyWith<$Res>
    implements $SignPayloadRequestCopyWith<$Res> {
  factory _$$SignPayloadRequestImplCopyWith(_$SignPayloadRequestImpl value,
          $Res Function(_$SignPayloadRequestImpl) then) =
      __$$SignPayloadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serviceName,
      String pathSuffix,
      Map<String, dynamic> description,
      List<SignPayloadRequestData> payloads});
}

/// @nodoc
class __$$SignPayloadRequestImplCopyWithImpl<$Res>
    extends _$SignPayloadRequestCopyWithImpl<$Res, _$SignPayloadRequestImpl>
    implements _$$SignPayloadRequestImplCopyWith<$Res> {
  __$$SignPayloadRequestImplCopyWithImpl(_$SignPayloadRequestImpl _value,
      $Res Function(_$SignPayloadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? pathSuffix = null,
    Object? description = null,
    Object? payloads = null,
  }) {
    return _then(_$SignPayloadRequestImpl(
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
              as List<SignPayloadRequestData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignPayloadRequestImpl extends _SignPayloadRequest {
  const _$SignPayloadRequestImpl(
      {required this.serviceName,
      this.pathSuffix = '',
      final Map<String, dynamic> description = const {},
      final List<SignPayloadRequestData> payloads = const []})
      : _description = description,
        _payloads = payloads,
        super._();

  factory _$SignPayloadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignPayloadRequestImplFromJson(json);

  /// Service name to identify the derivation path to use
  @override
  final String serviceName;

  /// Additional information to add to a service derivation path (optional - default to empty)
  @override
  @JsonKey()
  final String pathSuffix;

  /// Description to explain the signature in multiple languages (key=Locale, value=description)
  final Map<String, dynamic> _description;

  /// Description to explain the signature in multiple languages (key=Locale, value=description)
  @override
  @JsonKey()
  Map<String, dynamic> get description {
    if (_description is EqualUnmodifiableMapView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_description);
  }

  /// - List of payloads to sign
  final List<SignPayloadRequestData> _payloads;

  /// - List of payloads to sign
  @override
  @JsonKey()
  List<SignPayloadRequestData> get payloads {
    if (_payloads is EqualUnmodifiableListView) return _payloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloads);
  }

  @override
  String toString() {
    return 'SignPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, payloads: $payloads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignPayloadRequestImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.pathSuffix, pathSuffix) ||
                other.pathSuffix == pathSuffix) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality().equals(other._payloads, _payloads));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      serviceName,
      pathSuffix,
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(_payloads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignPayloadRequestImplCopyWith<_$SignPayloadRequestImpl> get copyWith =>
      __$$SignPayloadRequestImplCopyWithImpl<_$SignPayloadRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignPayloadRequestImplToJson(
      this,
    );
  }
}

abstract class _SignPayloadRequest extends SignPayloadRequest {
  const factory _SignPayloadRequest(
      {required final String serviceName,
      final String pathSuffix,
      final Map<String, dynamic> description,
      final List<SignPayloadRequestData> payloads}) = _$SignPayloadRequestImpl;
  const _SignPayloadRequest._() : super._();

  factory _SignPayloadRequest.fromJson(Map<String, dynamic> json) =
      _$SignPayloadRequestImpl.fromJson;

  @override

  /// Service name to identify the derivation path to use
  String get serviceName;
  @override

  /// Additional information to add to a service derivation path (optional - default to empty)
  String get pathSuffix;
  @override

  /// Description to explain the signature in multiple languages (key=Locale, value=description)
  Map<String, dynamic> get description;
  @override

  /// - List of payloads to sign
  List<SignPayloadRequestData> get payloads;
  @override
  @JsonKey(ignore: true)
  _$$SignPayloadRequestImplCopyWith<_$SignPayloadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
