// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignTransactionsResult _$SignTransactionsResultFromJson(
    Map<String, dynamic> json) {
  return _SignTransactionsResult.fromJson(json);
}

/// @nodoc
mixin _$SignTransactionsResult {
  List<SignTransactionsResultDetail> get signedTxs =>
      throw _privateConstructorUsedError;

  /// Serializes this SignTransactionsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignTransactionsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignTransactionsResultCopyWith<SignTransactionsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionsResultCopyWith<$Res> {
  factory $SignTransactionsResultCopyWith(SignTransactionsResult value,
          $Res Function(SignTransactionsResult) then) =
      _$SignTransactionsResultCopyWithImpl<$Res, SignTransactionsResult>;
  @useResult
  $Res call({List<SignTransactionsResultDetail> signedTxs});
}

/// @nodoc
class _$SignTransactionsResultCopyWithImpl<$Res,
        $Val extends SignTransactionsResult>
    implements $SignTransactionsResultCopyWith<$Res> {
  _$SignTransactionsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignTransactionsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedTxs = null,
  }) {
    return _then(_value.copyWith(
      signedTxs: null == signedTxs
          ? _value.signedTxs
          : signedTxs // ignore: cast_nullable_to_non_nullable
              as List<SignTransactionsResultDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignTransactionsResultImplCopyWith<$Res>
    implements $SignTransactionsResultCopyWith<$Res> {
  factory _$$SignTransactionsResultImplCopyWith(
          _$SignTransactionsResultImpl value,
          $Res Function(_$SignTransactionsResultImpl) then) =
      __$$SignTransactionsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SignTransactionsResultDetail> signedTxs});
}

/// @nodoc
class __$$SignTransactionsResultImplCopyWithImpl<$Res>
    extends _$SignTransactionsResultCopyWithImpl<$Res,
        _$SignTransactionsResultImpl>
    implements _$$SignTransactionsResultImplCopyWith<$Res> {
  __$$SignTransactionsResultImplCopyWithImpl(
      _$SignTransactionsResultImpl _value,
      $Res Function(_$SignTransactionsResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signedTxs = null,
  }) {
    return _then(_$SignTransactionsResultImpl(
      signedTxs: null == signedTxs
          ? _value._signedTxs
          : signedTxs // ignore: cast_nullable_to_non_nullable
              as List<SignTransactionsResultDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignTransactionsResultImpl extends _SignTransactionsResult {
  const _$SignTransactionsResultImpl(
      {required final List<SignTransactionsResultDetail> signedTxs})
      : _signedTxs = signedTxs,
        super._();

  factory _$SignTransactionsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignTransactionsResultImplFromJson(json);

  final List<SignTransactionsResultDetail> _signedTxs;
  @override
  List<SignTransactionsResultDetail> get signedTxs {
    if (_signedTxs is EqualUnmodifiableListView) return _signedTxs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signedTxs);
  }

  @override
  String toString() {
    return 'SignTransactionsResult(signedTxs: $signedTxs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionsResultImpl &&
            const DeepCollectionEquality()
                .equals(other._signedTxs, _signedTxs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_signedTxs));

  /// Create a copy of SignTransactionsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignTransactionsResultImplCopyWith<_$SignTransactionsResultImpl>
      get copyWith => __$$SignTransactionsResultImplCopyWithImpl<
          _$SignTransactionsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignTransactionsResultImplToJson(
      this,
    );
  }
}

abstract class _SignTransactionsResult extends SignTransactionsResult {
  const factory _SignTransactionsResult(
          {required final List<SignTransactionsResultDetail> signedTxs}) =
      _$SignTransactionsResultImpl;
  const _SignTransactionsResult._() : super._();

  factory _SignTransactionsResult.fromJson(Map<String, dynamic> json) =
      _$SignTransactionsResultImpl.fromJson;

  @override
  List<SignTransactionsResultDetail> get signedTxs;

  /// Create a copy of SignTransactionsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignTransactionsResultImplCopyWith<_$SignTransactionsResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignTransactionsResultDetail _$SignTransactionsResultDetailFromJson(
    Map<String, dynamic> json) {
  return _SignTransactionsResultDetail.fromJson(json);
}

/// @nodoc
mixin _$SignTransactionsResultDetail {
  /// Address: hash of the new generated public key for the given transaction
  String get address => throw _privateConstructorUsedError;

  /// Previous generated public key matching the previous signature
  String get previousPublicKey => throw _privateConstructorUsedError;

  /// Signature from the previous public key
  String get previousSignature => throw _privateConstructorUsedError;

  /// Signature from the device which originated the transaction (used in the Proof of work)
  String get originSignature => throw _privateConstructorUsedError;

  /// Serializes this SignTransactionsResultDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignTransactionsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignTransactionsResultDetailCopyWith<SignTransactionsResultDetail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionsResultDetailCopyWith<$Res> {
  factory $SignTransactionsResultDetailCopyWith(
          SignTransactionsResultDetail value,
          $Res Function(SignTransactionsResultDetail) then) =
      _$SignTransactionsResultDetailCopyWithImpl<$Res,
          SignTransactionsResultDetail>;
  @useResult
  $Res call(
      {String address,
      String previousPublicKey,
      String previousSignature,
      String originSignature});
}

/// @nodoc
class _$SignTransactionsResultDetailCopyWithImpl<$Res,
        $Val extends SignTransactionsResultDetail>
    implements $SignTransactionsResultDetailCopyWith<$Res> {
  _$SignTransactionsResultDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignTransactionsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? previousPublicKey = null,
    Object? previousSignature = null,
    Object? originSignature = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      previousPublicKey: null == previousPublicKey
          ? _value.previousPublicKey
          : previousPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      previousSignature: null == previousSignature
          ? _value.previousSignature
          : previousSignature // ignore: cast_nullable_to_non_nullable
              as String,
      originSignature: null == originSignature
          ? _value.originSignature
          : originSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignTransactionsResultDetailImplCopyWith<$Res>
    implements $SignTransactionsResultDetailCopyWith<$Res> {
  factory _$$SignTransactionsResultDetailImplCopyWith(
          _$SignTransactionsResultDetailImpl value,
          $Res Function(_$SignTransactionsResultDetailImpl) then) =
      __$$SignTransactionsResultDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String previousPublicKey,
      String previousSignature,
      String originSignature});
}

/// @nodoc
class __$$SignTransactionsResultDetailImplCopyWithImpl<$Res>
    extends _$SignTransactionsResultDetailCopyWithImpl<$Res,
        _$SignTransactionsResultDetailImpl>
    implements _$$SignTransactionsResultDetailImplCopyWith<$Res> {
  __$$SignTransactionsResultDetailImplCopyWithImpl(
      _$SignTransactionsResultDetailImpl _value,
      $Res Function(_$SignTransactionsResultDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? previousPublicKey = null,
    Object? previousSignature = null,
    Object? originSignature = null,
  }) {
    return _then(_$SignTransactionsResultDetailImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      previousPublicKey: null == previousPublicKey
          ? _value.previousPublicKey
          : previousPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      previousSignature: null == previousSignature
          ? _value.previousSignature
          : previousSignature // ignore: cast_nullable_to_non_nullable
              as String,
      originSignature: null == originSignature
          ? _value.originSignature
          : originSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignTransactionsResultDetailImpl extends _SignTransactionsResultDetail {
  const _$SignTransactionsResultDetailImpl(
      {required this.address,
      required this.previousPublicKey,
      required this.previousSignature,
      required this.originSignature})
      : super._();

  factory _$SignTransactionsResultDetailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SignTransactionsResultDetailImplFromJson(json);

  /// Address: hash of the new generated public key for the given transaction
  @override
  final String address;

  /// Previous generated public key matching the previous signature
  @override
  final String previousPublicKey;

  /// Signature from the previous public key
  @override
  final String previousSignature;

  /// Signature from the device which originated the transaction (used in the Proof of work)
  @override
  final String originSignature;

  @override
  String toString() {
    return 'SignTransactionsResultDetail(address: $address, previousPublicKey: $previousPublicKey, previousSignature: $previousSignature, originSignature: $originSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionsResultDetailImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.previousPublicKey, previousPublicKey) ||
                other.previousPublicKey == previousPublicKey) &&
            (identical(other.previousSignature, previousSignature) ||
                other.previousSignature == previousSignature) &&
            (identical(other.originSignature, originSignature) ||
                other.originSignature == originSignature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, previousPublicKey,
      previousSignature, originSignature);

  /// Create a copy of SignTransactionsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignTransactionsResultDetailImplCopyWith<
          _$SignTransactionsResultDetailImpl>
      get copyWith => __$$SignTransactionsResultDetailImplCopyWithImpl<
          _$SignTransactionsResultDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignTransactionsResultDetailImplToJson(
      this,
    );
  }
}

abstract class _SignTransactionsResultDetail
    extends SignTransactionsResultDetail {
  const factory _SignTransactionsResultDetail(
          {required final String address,
          required final String previousPublicKey,
          required final String previousSignature,
          required final String originSignature}) =
      _$SignTransactionsResultDetailImpl;
  const _SignTransactionsResultDetail._() : super._();

  factory _SignTransactionsResultDetail.fromJson(Map<String, dynamic> json) =
      _$SignTransactionsResultDetailImpl.fromJson;

  /// Address: hash of the new generated public key for the given transaction
  @override
  String get address;

  /// Previous generated public key matching the previous signature
  @override
  String get previousPublicKey;

  /// Signature from the previous public key
  @override
  String get previousSignature;

  /// Signature from the device which originated the transaction (used in the Proof of work)
  @override
  String get originSignature;

  /// Create a copy of SignTransactionsResultDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignTransactionsResultDetailImplCopyWith<
          _$SignTransactionsResultDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignTransactionRequestData _$SignTransactionRequestDataFromJson(
    Map<String, dynamic> json) {
  return _SignTransactionRequestData.fromJson(json);
}

/// @nodoc
mixin _$SignTransactionRequestData {
  Data get data => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;

  /// Serializes this SignTransactionRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignTransactionRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignTransactionRequestDataCopyWith<SignTransactionRequestData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionRequestDataCopyWith<$Res> {
  factory $SignTransactionRequestDataCopyWith(SignTransactionRequestData value,
          $Res Function(SignTransactionRequestData) then) =
      _$SignTransactionRequestDataCopyWithImpl<$Res,
          SignTransactionRequestData>;
  @useResult
  $Res call({Data data, String type, int version});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignTransactionRequestDataCopyWithImpl<$Res,
        $Val extends SignTransactionRequestData>
    implements $SignTransactionRequestDataCopyWith<$Res> {
  _$SignTransactionRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignTransactionRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of SignTransactionRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignTransactionRequestDataImplCopyWith<$Res>
    implements $SignTransactionRequestDataCopyWith<$Res> {
  factory _$$SignTransactionRequestDataImplCopyWith(
          _$SignTransactionRequestDataImpl value,
          $Res Function(_$SignTransactionRequestDataImpl) then) =
      __$$SignTransactionRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data, String type, int version});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SignTransactionRequestDataImplCopyWithImpl<$Res>
    extends _$SignTransactionRequestDataCopyWithImpl<$Res,
        _$SignTransactionRequestDataImpl>
    implements _$$SignTransactionRequestDataImplCopyWith<$Res> {
  __$$SignTransactionRequestDataImplCopyWithImpl(
      _$SignTransactionRequestDataImpl _value,
      $Res Function(_$SignTransactionRequestDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_$SignTransactionRequestDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignTransactionRequestDataImpl extends _SignTransactionRequestData {
  const _$SignTransactionRequestDataImpl(
      {required this.data, required this.type, required this.version})
      : super._();

  factory _$SignTransactionRequestDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SignTransactionRequestDataImplFromJson(json);

  @override
  final Data data;
  @override
  final String type;
  @override
  final int version;

  @override
  String toString() {
    return 'SignTransactionRequestData(data: $data, type: $type, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionRequestDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, type, version);

  /// Create a copy of SignTransactionRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignTransactionRequestDataImplCopyWith<_$SignTransactionRequestDataImpl>
      get copyWith => __$$SignTransactionRequestDataImplCopyWithImpl<
          _$SignTransactionRequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignTransactionRequestDataImplToJson(
      this,
    );
  }
}

abstract class _SignTransactionRequestData extends SignTransactionRequestData {
  const factory _SignTransactionRequestData(
      {required final Data data,
      required final String type,
      required final int version}) = _$SignTransactionRequestDataImpl;
  const _SignTransactionRequestData._() : super._();

  factory _SignTransactionRequestData.fromJson(Map<String, dynamic> json) =
      _$SignTransactionRequestDataImpl.fromJson;

  @override
  Data get data;
  @override
  String get type;
  @override
  int get version;

  /// Create a copy of SignTransactionRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignTransactionRequestDataImplCopyWith<_$SignTransactionRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignTransactionRequest _$SignTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return _SignTransactionRequest.fromJson(json);
}

/// @nodoc
mixin _$SignTransactionRequest {
  /// Service name to identify the derivation path to use
  String get serviceName => throw _privateConstructorUsedError;

  /// Additional information to add to a service derivation path (optional - default to empty)
  String get pathSuffix => throw _privateConstructorUsedError;

  /// Description to explain the signature in multiple languages (key=Locale, value=description)
  Map<String, dynamic> get description => throw _privateConstructorUsedError;

  /// - List of transaction's infos
  List<SignTransactionRequestData> get transactions =>
      throw _privateConstructorUsedError;

  /// Serializes this SignTransactionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignTransactionRequestCopyWith<SignTransactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionRequestCopyWith<$Res> {
  factory $SignTransactionRequestCopyWith(SignTransactionRequest value,
          $Res Function(SignTransactionRequest) then) =
      _$SignTransactionRequestCopyWithImpl<$Res, SignTransactionRequest>;
  @useResult
  $Res call(
      {String serviceName,
      String pathSuffix,
      Map<String, dynamic> description,
      List<SignTransactionRequestData> transactions});
}

/// @nodoc
class _$SignTransactionRequestCopyWithImpl<$Res,
        $Val extends SignTransactionRequest>
    implements $SignTransactionRequestCopyWith<$Res> {
  _$SignTransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? pathSuffix = null,
    Object? description = null,
    Object? transactions = null,
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
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<SignTransactionRequestData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignTransactionRequestImplCopyWith<$Res>
    implements $SignTransactionRequestCopyWith<$Res> {
  factory _$$SignTransactionRequestImplCopyWith(
          _$SignTransactionRequestImpl value,
          $Res Function(_$SignTransactionRequestImpl) then) =
      __$$SignTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serviceName,
      String pathSuffix,
      Map<String, dynamic> description,
      List<SignTransactionRequestData> transactions});
}

/// @nodoc
class __$$SignTransactionRequestImplCopyWithImpl<$Res>
    extends _$SignTransactionRequestCopyWithImpl<$Res,
        _$SignTransactionRequestImpl>
    implements _$$SignTransactionRequestImplCopyWith<$Res> {
  __$$SignTransactionRequestImplCopyWithImpl(
      _$SignTransactionRequestImpl _value,
      $Res Function(_$SignTransactionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? pathSuffix = null,
    Object? description = null,
    Object? transactions = null,
  }) {
    return _then(_$SignTransactionRequestImpl(
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
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<SignTransactionRequestData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignTransactionRequestImpl extends _SignTransactionRequest {
  const _$SignTransactionRequestImpl(
      {required this.serviceName,
      this.pathSuffix = '',
      final Map<String, dynamic> description = const {},
      final List<SignTransactionRequestData> transactions = const []})
      : _description = description,
        _transactions = transactions,
        super._();

  factory _$SignTransactionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignTransactionRequestImplFromJson(json);

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

  /// - List of transaction's infos
  final List<SignTransactionRequestData> _transactions;

  /// - List of transaction's infos
  @override
  @JsonKey()
  List<SignTransactionRequestData> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'SignTransactionRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionRequestImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.pathSuffix, pathSuffix) ||
                other.pathSuffix == pathSuffix) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      serviceName,
      pathSuffix,
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of SignTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignTransactionRequestImplCopyWith<_$SignTransactionRequestImpl>
      get copyWith => __$$SignTransactionRequestImplCopyWithImpl<
          _$SignTransactionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignTransactionRequestImplToJson(
      this,
    );
  }
}

abstract class _SignTransactionRequest extends SignTransactionRequest {
  const factory _SignTransactionRequest(
          {required final String serviceName,
          final String pathSuffix,
          final Map<String, dynamic> description,
          final List<SignTransactionRequestData> transactions}) =
      _$SignTransactionRequestImpl;
  const _SignTransactionRequest._() : super._();

  factory _SignTransactionRequest.fromJson(Map<String, dynamic> json) =
      _$SignTransactionRequestImpl.fromJson;

  /// Service name to identify the derivation path to use
  @override
  String get serviceName;

  /// Additional information to add to a service derivation path (optional - default to empty)
  @override
  String get pathSuffix;

  /// Description to explain the signature in multiple languages (key=Locale, value=description)
  @override
  Map<String, dynamic> get description;

  /// - List of transaction's infos
  @override
  List<SignTransactionRequestData> get transactions;

  /// Create a copy of SignTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignTransactionRequestImplCopyWith<_$SignTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
