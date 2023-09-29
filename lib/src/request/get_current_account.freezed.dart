// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_current_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCurrentAccountResult _$GetCurrentAccountResultFromJson(
    Map<String, dynamic> json) {
  return _GetCurrentAccountResult.fromJson(json);
}

/// @nodoc
mixin _$GetCurrentAccountResult {
  String get shortName => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String get genesisAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCurrentAccountResultCopyWith<GetCurrentAccountResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentAccountResultCopyWith<$Res> {
  factory $GetCurrentAccountResultCopyWith(GetCurrentAccountResult value,
          $Res Function(GetCurrentAccountResult) then) =
      _$GetCurrentAccountResultCopyWithImpl<$Res, GetCurrentAccountResult>;
  @useResult
  $Res call({String shortName, String serviceName, String genesisAddress});
}

/// @nodoc
class _$GetCurrentAccountResultCopyWithImpl<$Res,
        $Val extends GetCurrentAccountResult>
    implements $GetCurrentAccountResultCopyWith<$Res> {
  _$GetCurrentAccountResultCopyWithImpl(this._value, this._then);

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
abstract class _$$GetCurrentAccountResultImplCopyWith<$Res>
    implements $GetCurrentAccountResultCopyWith<$Res> {
  factory _$$GetCurrentAccountResultImplCopyWith(
          _$GetCurrentAccountResultImpl value,
          $Res Function(_$GetCurrentAccountResultImpl) then) =
      __$$GetCurrentAccountResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shortName, String serviceName, String genesisAddress});
}

/// @nodoc
class __$$GetCurrentAccountResultImplCopyWithImpl<$Res>
    extends _$GetCurrentAccountResultCopyWithImpl<$Res,
        _$GetCurrentAccountResultImpl>
    implements _$$GetCurrentAccountResultImplCopyWith<$Res> {
  __$$GetCurrentAccountResultImplCopyWithImpl(
      _$GetCurrentAccountResultImpl _value,
      $Res Function(_$GetCurrentAccountResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortName = null,
    Object? serviceName = null,
    Object? genesisAddress = null,
  }) {
    return _then(_$GetCurrentAccountResultImpl(
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
class _$GetCurrentAccountResultImpl extends _GetCurrentAccountResult {
  const _$GetCurrentAccountResultImpl(
      {required this.shortName,
      required this.serviceName,
      required this.genesisAddress})
      : super._();

  factory _$GetCurrentAccountResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCurrentAccountResultImplFromJson(json);

  @override
  final String shortName;
  @override
  final String serviceName;
  @override
  final String genesisAddress;

  @override
  String toString() {
    return 'GetCurrentAccountResult(shortName: $shortName, serviceName: $serviceName, genesisAddress: $genesisAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentAccountResultImpl &&
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
  _$$GetCurrentAccountResultImplCopyWith<_$GetCurrentAccountResultImpl>
      get copyWith => __$$GetCurrentAccountResultImplCopyWithImpl<
          _$GetCurrentAccountResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCurrentAccountResultImplToJson(
      this,
    );
  }
}

abstract class _GetCurrentAccountResult extends GetCurrentAccountResult {
  const factory _GetCurrentAccountResult(
      {required final String shortName,
      required final String serviceName,
      required final String genesisAddress}) = _$GetCurrentAccountResultImpl;
  const _GetCurrentAccountResult._() : super._();

  factory _GetCurrentAccountResult.fromJson(Map<String, dynamic> json) =
      _$GetCurrentAccountResultImpl.fromJson;

  @override
  String get shortName;
  @override
  String get serviceName;
  @override
  String get genesisAddress;
  @override
  @JsonKey(ignore: true)
  _$$GetCurrentAccountResultImplCopyWith<_$GetCurrentAccountResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
