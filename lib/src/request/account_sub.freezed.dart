// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_sub.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBalance _$AccountBalanceFromJson(Map<String, dynamic> json) {
  return _AccountBalance.fromJson(json);
}

/// @nodoc
mixin _$AccountBalance {
  String get nativeTokenName => throw _privateConstructorUsedError;
  double get nativeTokenValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBalanceCopyWith<AccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBalanceCopyWith<$Res> {
  factory $AccountBalanceCopyWith(
          AccountBalance value, $Res Function(AccountBalance) then) =
      _$AccountBalanceCopyWithImpl<$Res, AccountBalance>;
  @useResult
  $Res call({String nativeTokenName, double nativeTokenValue});
}

/// @nodoc
class _$AccountBalanceCopyWithImpl<$Res, $Val extends AccountBalance>
    implements $AccountBalanceCopyWith<$Res> {
  _$AccountBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nativeTokenName = null,
    Object? nativeTokenValue = null,
  }) {
    return _then(_value.copyWith(
      nativeTokenName: null == nativeTokenName
          ? _value.nativeTokenName
          : nativeTokenName // ignore: cast_nullable_to_non_nullable
              as String,
      nativeTokenValue: null == nativeTokenValue
          ? _value.nativeTokenValue
          : nativeTokenValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountBalanceImplCopyWith<$Res>
    implements $AccountBalanceCopyWith<$Res> {
  factory _$$AccountBalanceImplCopyWith(_$AccountBalanceImpl value,
          $Res Function(_$AccountBalanceImpl) then) =
      __$$AccountBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nativeTokenName, double nativeTokenValue});
}

/// @nodoc
class __$$AccountBalanceImplCopyWithImpl<$Res>
    extends _$AccountBalanceCopyWithImpl<$Res, _$AccountBalanceImpl>
    implements _$$AccountBalanceImplCopyWith<$Res> {
  __$$AccountBalanceImplCopyWithImpl(
      _$AccountBalanceImpl _value, $Res Function(_$AccountBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nativeTokenName = null,
    Object? nativeTokenValue = null,
  }) {
    return _then(_$AccountBalanceImpl(
      nativeTokenName: null == nativeTokenName
          ? _value.nativeTokenName
          : nativeTokenName // ignore: cast_nullable_to_non_nullable
              as String,
      nativeTokenValue: null == nativeTokenValue
          ? _value.nativeTokenValue
          : nativeTokenValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountBalanceImpl extends _AccountBalance {
  const _$AccountBalanceImpl(
      {required this.nativeTokenName, required this.nativeTokenValue})
      : super._();

  factory _$AccountBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountBalanceImplFromJson(json);

  @override
  final String nativeTokenName;
  @override
  final double nativeTokenValue;

  @override
  String toString() {
    return 'AccountBalance(nativeTokenName: $nativeTokenName, nativeTokenValue: $nativeTokenValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountBalanceImpl &&
            (identical(other.nativeTokenName, nativeTokenName) ||
                other.nativeTokenName == nativeTokenName) &&
            (identical(other.nativeTokenValue, nativeTokenValue) ||
                other.nativeTokenValue == nativeTokenValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nativeTokenName, nativeTokenValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountBalanceImplCopyWith<_$AccountBalanceImpl> get copyWith =>
      __$$AccountBalanceImplCopyWithImpl<_$AccountBalanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountBalanceImplToJson(
      this,
    );
  }
}

abstract class _AccountBalance extends AccountBalance {
  const factory _AccountBalance(
      {required final String nativeTokenName,
      required final double nativeTokenValue}) = _$AccountBalanceImpl;
  const _AccountBalance._() : super._();

  factory _AccountBalance.fromJson(Map<String, dynamic> json) =
      _$AccountBalanceImpl.fromJson;

  @override
  String get nativeTokenName;
  @override
  double get nativeTokenValue;
  @override
  @JsonKey(ignore: true)
  _$$AccountBalanceImplCopyWith<_$AccountBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String get name => throw _privateConstructorUsedError;
  String get genesisAddress => throw _privateConstructorUsedError;
  String? get lastAddress => throw _privateConstructorUsedError;
  AccountBalance? get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String name,
      String genesisAddress,
      String? lastAddress,
      AccountBalance? balance});

  $AccountBalanceCopyWith<$Res>? get balance;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? genesisAddress = null,
    Object? lastAddress = freezed,
    Object? balance = freezed,
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
      lastAddress: freezed == lastAddress
          ? _value.lastAddress
          : lastAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalance?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountBalanceCopyWith<$Res>? get balance {
    if (_value.balance == null) {
      return null;
    }

    return $AccountBalanceCopyWith<$Res>(_value.balance!, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String genesisAddress,
      String? lastAddress,
      AccountBalance? balance});

  @override
  $AccountBalanceCopyWith<$Res>? get balance;
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? genesisAddress = null,
    Object? lastAddress = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$AccountImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genesisAddress: null == genesisAddress
          ? _value.genesisAddress
          : genesisAddress // ignore: cast_nullable_to_non_nullable
              as String,
      lastAddress: freezed == lastAddress
          ? _value.lastAddress
          : lastAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalance?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl extends _Account {
  const _$AccountImpl(
      {required this.name,
      required this.genesisAddress,
      this.lastAddress,
      this.balance})
      : super._();

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final String name;
  @override
  final String genesisAddress;
  @override
  final String? lastAddress;
  @override
  final AccountBalance? balance;

  @override
  String toString() {
    return 'Account(name: $name, genesisAddress: $genesisAddress, lastAddress: $lastAddress, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genesisAddress, genesisAddress) ||
                other.genesisAddress == genesisAddress) &&
            (identical(other.lastAddress, lastAddress) ||
                other.lastAddress == lastAddress) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, genesisAddress, lastAddress, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account extends Account {
  const factory _Account(
      {required final String name,
      required final String genesisAddress,
      final String? lastAddress,
      final AccountBalance? balance}) = _$AccountImpl;
  const _Account._() : super._();

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  String get name;
  @override
  String get genesisAddress;
  @override
  String? get lastAddress;
  @override
  AccountBalance? get balance;
  @override
  @JsonKey(ignore: true)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscribeAccountRequest _$SubscribeAccountRequestFromJson(
    Map<String, dynamic> json) {
  return _SubscribeAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$SubscribeAccountRequest {
  String get serviceName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribeAccountRequestCopyWith<SubscribeAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeAccountRequestCopyWith<$Res> {
  factory $SubscribeAccountRequestCopyWith(SubscribeAccountRequest value,
          $Res Function(SubscribeAccountRequest) then) =
      _$SubscribeAccountRequestCopyWithImpl<$Res, SubscribeAccountRequest>;
  @useResult
  $Res call({String serviceName});
}

/// @nodoc
class _$SubscribeAccountRequestCopyWithImpl<$Res,
        $Val extends SubscribeAccountRequest>
    implements $SubscribeAccountRequestCopyWith<$Res> {
  _$SubscribeAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
  }) {
    return _then(_value.copyWith(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscribeAccountRequestImplCopyWith<$Res>
    implements $SubscribeAccountRequestCopyWith<$Res> {
  factory _$$SubscribeAccountRequestImplCopyWith(
          _$SubscribeAccountRequestImpl value,
          $Res Function(_$SubscribeAccountRequestImpl) then) =
      __$$SubscribeAccountRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String serviceName});
}

/// @nodoc
class __$$SubscribeAccountRequestImplCopyWithImpl<$Res>
    extends _$SubscribeAccountRequestCopyWithImpl<$Res,
        _$SubscribeAccountRequestImpl>
    implements _$$SubscribeAccountRequestImplCopyWith<$Res> {
  __$$SubscribeAccountRequestImplCopyWithImpl(
      _$SubscribeAccountRequestImpl _value,
      $Res Function(_$SubscribeAccountRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
  }) {
    return _then(_$SubscribeAccountRequestImpl(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscribeAccountRequestImpl extends _SubscribeAccountRequest {
  const _$SubscribeAccountRequestImpl({required this.serviceName}) : super._();

  factory _$SubscribeAccountRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscribeAccountRequestImplFromJson(json);

  @override
  final String serviceName;

  @override
  String toString() {
    return 'SubscribeAccountRequest(serviceName: $serviceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeAccountRequestImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serviceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscribeAccountRequestImplCopyWith<_$SubscribeAccountRequestImpl>
      get copyWith => __$$SubscribeAccountRequestImplCopyWithImpl<
          _$SubscribeAccountRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscribeAccountRequestImplToJson(
      this,
    );
  }
}

abstract class _SubscribeAccountRequest extends SubscribeAccountRequest {
  const factory _SubscribeAccountRequest({required final String serviceName}) =
      _$SubscribeAccountRequestImpl;
  const _SubscribeAccountRequest._() : super._();

  factory _SubscribeAccountRequest.fromJson(Map<String, dynamic> json) =
      _$SubscribeAccountRequestImpl.fromJson;

  @override
  String get serviceName;
  @override
  @JsonKey(ignore: true)
  _$$SubscribeAccountRequestImplCopyWith<_$SubscribeAccountRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscribeCurrentAccountRequest _$SubscribeCurrentAccountRequestFromJson(
    Map<String, dynamic> json) {
  return _SubscribeCurrentAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$SubscribeCurrentAccountRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeCurrentAccountRequestCopyWith<$Res> {
  factory $SubscribeCurrentAccountRequestCopyWith(
          SubscribeCurrentAccountRequest value,
          $Res Function(SubscribeCurrentAccountRequest) then) =
      _$SubscribeCurrentAccountRequestCopyWithImpl<$Res,
          SubscribeCurrentAccountRequest>;
}

/// @nodoc
class _$SubscribeCurrentAccountRequestCopyWithImpl<$Res,
        $Val extends SubscribeCurrentAccountRequest>
    implements $SubscribeCurrentAccountRequestCopyWith<$Res> {
  _$SubscribeCurrentAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubscribeCurrentAccountRequestImplCopyWith<$Res> {
  factory _$$SubscribeCurrentAccountRequestImplCopyWith(
          _$SubscribeCurrentAccountRequestImpl value,
          $Res Function(_$SubscribeCurrentAccountRequestImpl) then) =
      __$$SubscribeCurrentAccountRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeCurrentAccountRequestImplCopyWithImpl<$Res>
    extends _$SubscribeCurrentAccountRequestCopyWithImpl<$Res,
        _$SubscribeCurrentAccountRequestImpl>
    implements _$$SubscribeCurrentAccountRequestImplCopyWith<$Res> {
  __$$SubscribeCurrentAccountRequestImplCopyWithImpl(
      _$SubscribeCurrentAccountRequestImpl _value,
      $Res Function(_$SubscribeCurrentAccountRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SubscribeCurrentAccountRequestImpl
    extends _SubscribeCurrentAccountRequest {
  const _$SubscribeCurrentAccountRequestImpl() : super._();

  factory _$SubscribeCurrentAccountRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscribeCurrentAccountRequestImplFromJson(json);

  @override
  String toString() {
    return 'SubscribeCurrentAccountRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeCurrentAccountRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscribeCurrentAccountRequestImplToJson(
      this,
    );
  }
}

abstract class _SubscribeCurrentAccountRequest
    extends SubscribeCurrentAccountRequest {
  const factory _SubscribeCurrentAccountRequest() =
      _$SubscribeCurrentAccountRequestImpl;
  const _SubscribeCurrentAccountRequest._() : super._();

  factory _SubscribeCurrentAccountRequest.fromJson(Map<String, dynamic> json) =
      _$SubscribeCurrentAccountRequestImpl.fromJson;
}
