// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_accounts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppAccount _$AppAccountFromJson(Map<String, dynamic> json) {
  return _AppAccount.fromJson(json);
}

/// @nodoc
mixin _$AppAccount {
  String get shortName => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String get genesisAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppAccountCopyWith<AppAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAccountCopyWith<$Res> {
  factory $AppAccountCopyWith(
          AppAccount value, $Res Function(AppAccount) then) =
      _$AppAccountCopyWithImpl<$Res, AppAccount>;
  @useResult
  $Res call({String shortName, String serviceName, String genesisAddress});
}

/// @nodoc
class _$AppAccountCopyWithImpl<$Res, $Val extends AppAccount>
    implements $AppAccountCopyWith<$Res> {
  _$AppAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortName = null,
    Object? serviceName = null,
    Object? genesisAddress = null,
  }) {
    return _then(_value.copyWith(
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      genesisAddress: null == genesisAddress
          ? _value.genesisAddress
          : genesisAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppAccountImplCopyWith<$Res>
    implements $AppAccountCopyWith<$Res> {
  factory _$$AppAccountImplCopyWith(
          _$AppAccountImpl value, $Res Function(_$AppAccountImpl) then) =
      __$$AppAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shortName, String serviceName, String genesisAddress});
}

/// @nodoc
class __$$AppAccountImplCopyWithImpl<$Res>
    extends _$AppAccountCopyWithImpl<$Res, _$AppAccountImpl>
    implements _$$AppAccountImplCopyWith<$Res> {
  __$$AppAccountImplCopyWithImpl(
      _$AppAccountImpl _value, $Res Function(_$AppAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortName = null,
    Object? serviceName = null,
    Object? genesisAddress = null,
  }) {
    return _then(_$AppAccountImpl(
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      genesisAddress: null == genesisAddress
          ? _value.genesisAddress
          : genesisAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppAccountImpl extends _AppAccount {
  const _$AppAccountImpl(
      {required this.shortName,
      required this.serviceName,
      required this.genesisAddress})
      : super._();

  factory _$AppAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppAccountImplFromJson(json);

  @override
  final String shortName;
  @override
  final String serviceName;
  @override
  final String genesisAddress;

  @override
  String toString() {
    return 'AppAccount(shortName: $shortName, serviceName: $serviceName, genesisAddress: $genesisAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAccountImpl &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.genesisAddress, genesisAddress) ||
                other.genesisAddress == genesisAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shortName, serviceName, genesisAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAccountImplCopyWith<_$AppAccountImpl> get copyWith =>
      __$$AppAccountImplCopyWithImpl<_$AppAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppAccountImplToJson(
      this,
    );
  }
}

abstract class _AppAccount extends AppAccount {
  const factory _AppAccount(
      {required final String shortName,
      required final String serviceName,
      required final String genesisAddress}) = _$AppAccountImpl;
  const _AppAccount._() : super._();

  factory _AppAccount.fromJson(Map<String, dynamic> json) =
      _$AppAccountImpl.fromJson;

  @override
  String get shortName;
  @override
  String get serviceName;
  @override
  String get genesisAddress;
  @override
  @JsonKey(ignore: true)
  _$$AppAccountImplCopyWith<_$AppAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetAccountsResult _$GetAccountsResultFromJson(Map<String, dynamic> json) {
  return _GetAccountsResult.fromJson(json);
}

/// @nodoc
mixin _$GetAccountsResult {
  List<AppAccount> get accounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAccountsResultCopyWith<GetAccountsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAccountsResultCopyWith<$Res> {
  factory $GetAccountsResultCopyWith(
          GetAccountsResult value, $Res Function(GetAccountsResult) then) =
      _$GetAccountsResultCopyWithImpl<$Res, GetAccountsResult>;
  @useResult
  $Res call({List<AppAccount> accounts});
}

/// @nodoc
class _$GetAccountsResultCopyWithImpl<$Res, $Val extends GetAccountsResult>
    implements $GetAccountsResultCopyWith<$Res> {
  _$GetAccountsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AppAccount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAccountsResultImplCopyWith<$Res>
    implements $GetAccountsResultCopyWith<$Res> {
  factory _$$GetAccountsResultImplCopyWith(_$GetAccountsResultImpl value,
          $Res Function(_$GetAccountsResultImpl) then) =
      __$$GetAccountsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppAccount> accounts});
}

/// @nodoc
class __$$GetAccountsResultImplCopyWithImpl<$Res>
    extends _$GetAccountsResultCopyWithImpl<$Res, _$GetAccountsResultImpl>
    implements _$$GetAccountsResultImplCopyWith<$Res> {
  __$$GetAccountsResultImplCopyWithImpl(_$GetAccountsResultImpl _value,
      $Res Function(_$GetAccountsResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$GetAccountsResultImpl(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AppAccount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAccountsResultImpl extends _GetAccountsResult {
  const _$GetAccountsResultImpl({required final List<AppAccount> accounts})
      : _accounts = accounts,
        super._();

  factory _$GetAccountsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAccountsResultImplFromJson(json);

  final List<AppAccount> _accounts;
  @override
  List<AppAccount> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'GetAccountsResult(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountsResultImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountsResultImplCopyWith<_$GetAccountsResultImpl> get copyWith =>
      __$$GetAccountsResultImplCopyWithImpl<_$GetAccountsResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAccountsResultImplToJson(
      this,
    );
  }
}

abstract class _GetAccountsResult extends GetAccountsResult {
  const factory _GetAccountsResult({required final List<AppAccount> accounts}) =
      _$GetAccountsResultImpl;
  const _GetAccountsResult._() : super._();

  factory _GetAccountsResult.fromJson(Map<String, dynamic> json) =
      _$GetAccountsResultImpl.fromJson;

  @override
  List<AppAccount> get accounts;
  @override
  @JsonKey(ignore: true)
  _$$GetAccountsResultImplCopyWith<_$GetAccountsResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetAccountsRequest _$GetAccountsRequestFromJson(Map<String, dynamic> json) {
  return _GetAccountsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetAccountsRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAccountsRequestCopyWith<$Res> {
  factory $GetAccountsRequestCopyWith(
          GetAccountsRequest value, $Res Function(GetAccountsRequest) then) =
      _$GetAccountsRequestCopyWithImpl<$Res, GetAccountsRequest>;
}

/// @nodoc
class _$GetAccountsRequestCopyWithImpl<$Res, $Val extends GetAccountsRequest>
    implements $GetAccountsRequestCopyWith<$Res> {
  _$GetAccountsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAccountsRequestImplCopyWith<$Res> {
  factory _$$GetAccountsRequestImplCopyWith(_$GetAccountsRequestImpl value,
          $Res Function(_$GetAccountsRequestImpl) then) =
      __$$GetAccountsRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccountsRequestImplCopyWithImpl<$Res>
    extends _$GetAccountsRequestCopyWithImpl<$Res, _$GetAccountsRequestImpl>
    implements _$$GetAccountsRequestImplCopyWith<$Res> {
  __$$GetAccountsRequestImplCopyWithImpl(_$GetAccountsRequestImpl _value,
      $Res Function(_$GetAccountsRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$GetAccountsRequestImpl extends _GetAccountsRequest {
  const _$GetAccountsRequestImpl() : super._();

  factory _$GetAccountsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAccountsRequestImplFromJson(json);

  @override
  String toString() {
    return 'GetAccountsRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAccountsRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAccountsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetAccountsRequest extends GetAccountsRequest {
  const factory _GetAccountsRequest() = _$GetAccountsRequestImpl;
  const _GetAccountsRequest._() : super._();

  factory _GetAccountsRequest.fromJson(Map<String, dynamic> json) =
      _$GetAccountsRequestImpl.fromJson;
}
