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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  bool operator ==(Object other) {
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
