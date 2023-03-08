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
abstract class _$$_GetAccountsResultCopyWith<$Res>
    implements $GetAccountsResultCopyWith<$Res> {
  factory _$$_GetAccountsResultCopyWith(_$_GetAccountsResult value,
          $Res Function(_$_GetAccountsResult) then) =
      __$$_GetAccountsResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppAccount> accounts});
}

/// @nodoc
class __$$_GetAccountsResultCopyWithImpl<$Res>
    extends _$GetAccountsResultCopyWithImpl<$Res, _$_GetAccountsResult>
    implements _$$_GetAccountsResultCopyWith<$Res> {
  __$$_GetAccountsResultCopyWithImpl(
      _$_GetAccountsResult _value, $Res Function(_$_GetAccountsResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$_GetAccountsResult(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AppAccount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAccountsResult extends _GetAccountsResult {
  const _$_GetAccountsResult({required final List<AppAccount> accounts})
      : _accounts = accounts,
        super._();

  factory _$_GetAccountsResult.fromJson(Map<String, dynamic> json) =>
      _$$_GetAccountsResultFromJson(json);

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
            other is _$_GetAccountsResult &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAccountsResultCopyWith<_$_GetAccountsResult> get copyWith =>
      __$$_GetAccountsResultCopyWithImpl<_$_GetAccountsResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAccountsResultToJson(
      this,
    );
  }
}

abstract class _GetAccountsResult extends GetAccountsResult {
  const factory _GetAccountsResult({required final List<AppAccount> accounts}) =
      _$_GetAccountsResult;
  const _GetAccountsResult._() : super._();

  factory _GetAccountsResult.fromJson(Map<String, dynamic> json) =
      _$_GetAccountsResult.fromJson;

  @override
  List<AppAccount> get accounts;
  @override
  @JsonKey(ignore: true)
  _$$_GetAccountsResultCopyWith<_$_GetAccountsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

AppAccount _$AppAccountFromJson(Map<String, dynamic> json) {
  return _AppAccount.fromJson(json);
}

/// @nodoc
mixin _$AppAccount {
  String get name => throw _privateConstructorUsedError;
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
  $Res call({String name, String genesisAddress});
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
    Object? name = null,
    Object? genesisAddress = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genesisAddress: null == genesisAddress
          ? _value.genesisAddress
          : genesisAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppAccountCopyWith<$Res>
    implements $AppAccountCopyWith<$Res> {
  factory _$$_AppAccountCopyWith(
          _$_AppAccount value, $Res Function(_$_AppAccount) then) =
      __$$_AppAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String genesisAddress});
}

/// @nodoc
class __$$_AppAccountCopyWithImpl<$Res>
    extends _$AppAccountCopyWithImpl<$Res, _$_AppAccount>
    implements _$$_AppAccountCopyWith<$Res> {
  __$$_AppAccountCopyWithImpl(
      _$_AppAccount _value, $Res Function(_$_AppAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? genesisAddress = null,
  }) {
    return _then(_$_AppAccount(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_AppAccount extends _AppAccount {
  const _$_AppAccount({required this.name, required this.genesisAddress})
      : super._();

  factory _$_AppAccount.fromJson(Map<String, dynamic> json) =>
      _$$_AppAccountFromJson(json);

  @override
  final String name;
  @override
  final String genesisAddress;

  @override
  String toString() {
    return 'AppAccount(name: $name, genesisAddress: $genesisAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppAccount &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genesisAddress, genesisAddress) ||
                other.genesisAddress == genesisAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, genesisAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppAccountCopyWith<_$_AppAccount> get copyWith =>
      __$$_AppAccountCopyWithImpl<_$_AppAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppAccountToJson(
      this,
    );
  }
}

abstract class _AppAccount extends AppAccount {
  const factory _AppAccount(
      {required final String name,
      required final String genesisAddress}) = _$_AppAccount;
  const _AppAccount._() : super._();

  factory _AppAccount.fromJson(Map<String, dynamic> json) =
      _$_AppAccount.fromJson;

  @override
  String get name;
  @override
  String get genesisAddress;
  @override
  @JsonKey(ignore: true)
  _$$_AppAccountCopyWith<_$_AppAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
