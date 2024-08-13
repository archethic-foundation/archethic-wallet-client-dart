// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveServiceRequest _$RemoveServiceRequestFromJson(Map<String, dynamic> json) {
  return _RemoveServiceRequest.fromJson(json);
}

/// @nodoc
mixin _$RemoveServiceRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveServiceRequestCopyWith<RemoveServiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveServiceRequestCopyWith<$Res> {
  factory $RemoveServiceRequestCopyWith(RemoveServiceRequest value,
          $Res Function(RemoveServiceRequest) then) =
      _$RemoveServiceRequestCopyWithImpl<$Res, RemoveServiceRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$RemoveServiceRequestCopyWithImpl<$Res,
        $Val extends RemoveServiceRequest>
    implements $RemoveServiceRequestCopyWith<$Res> {
  _$RemoveServiceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveServiceRequestImplCopyWith<$Res>
    implements $RemoveServiceRequestCopyWith<$Res> {
  factory _$$RemoveServiceRequestImplCopyWith(_$RemoveServiceRequestImpl value,
          $Res Function(_$RemoveServiceRequestImpl) then) =
      __$$RemoveServiceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$RemoveServiceRequestImplCopyWithImpl<$Res>
    extends _$RemoveServiceRequestCopyWithImpl<$Res, _$RemoveServiceRequestImpl>
    implements _$$RemoveServiceRequestImplCopyWith<$Res> {
  __$$RemoveServiceRequestImplCopyWithImpl(_$RemoveServiceRequestImpl _value,
      $Res Function(_$RemoveServiceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$RemoveServiceRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveServiceRequestImpl extends _RemoveServiceRequest {
  const _$RemoveServiceRequestImpl({required this.name}) : super._();

  factory _$RemoveServiceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveServiceRequestImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'RemoveServiceRequest(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveServiceRequestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveServiceRequestImplCopyWith<_$RemoveServiceRequestImpl>
      get copyWith =>
          __$$RemoveServiceRequestImplCopyWithImpl<_$RemoveServiceRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveServiceRequestImplToJson(
      this,
    );
  }
}

abstract class _RemoveServiceRequest extends RemoveServiceRequest {
  const factory _RemoveServiceRequest({required final String name}) =
      _$RemoveServiceRequestImpl;
  const _RemoveServiceRequest._() : super._();

  factory _RemoveServiceRequest.fromJson(Map<String, dynamic> json) =
      _$RemoveServiceRequestImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$RemoveServiceRequestImplCopyWith<_$RemoveServiceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
