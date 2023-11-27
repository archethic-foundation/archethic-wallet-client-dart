// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_current_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshCurrentAccountResult _$RefreshCurrentAccountResultFromJson(
    Map<String, dynamic> json) {
  return _RefreshCurrentAccountResult.fromJson(json);
}

/// @nodoc
mixin _$RefreshCurrentAccountResult {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshCurrentAccountResultCopyWith<$Res> {
  factory $RefreshCurrentAccountResultCopyWith(
          RefreshCurrentAccountResult value,
          $Res Function(RefreshCurrentAccountResult) then) =
      _$RefreshCurrentAccountResultCopyWithImpl<$Res,
          RefreshCurrentAccountResult>;
}

/// @nodoc
class _$RefreshCurrentAccountResultCopyWithImpl<$Res,
        $Val extends RefreshCurrentAccountResult>
    implements $RefreshCurrentAccountResultCopyWith<$Res> {
  _$RefreshCurrentAccountResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshCurrentAccountResultImplCopyWith<$Res> {
  factory _$$RefreshCurrentAccountResultImplCopyWith(
          _$RefreshCurrentAccountResultImpl value,
          $Res Function(_$RefreshCurrentAccountResultImpl) then) =
      __$$RefreshCurrentAccountResultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCurrentAccountResultImplCopyWithImpl<$Res>
    extends _$RefreshCurrentAccountResultCopyWithImpl<$Res,
        _$RefreshCurrentAccountResultImpl>
    implements _$$RefreshCurrentAccountResultImplCopyWith<$Res> {
  __$$RefreshCurrentAccountResultImplCopyWithImpl(
      _$RefreshCurrentAccountResultImpl _value,
      $Res Function(_$RefreshCurrentAccountResultImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RefreshCurrentAccountResultImpl extends _RefreshCurrentAccountResult {
  const _$RefreshCurrentAccountResultImpl() : super._();

  factory _$RefreshCurrentAccountResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RefreshCurrentAccountResultImplFromJson(json);

  @override
  String toString() {
    return 'RefreshCurrentAccountResult()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshCurrentAccountResultImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshCurrentAccountResultImplToJson(
      this,
    );
  }
}

abstract class _RefreshCurrentAccountResult
    extends RefreshCurrentAccountResult {
  const factory _RefreshCurrentAccountResult() =
      _$RefreshCurrentAccountResultImpl;
  const _RefreshCurrentAccountResult._() : super._();

  factory _RefreshCurrentAccountResult.fromJson(Map<String, dynamic> json) =
      _$RefreshCurrentAccountResultImpl.fromJson;
}
