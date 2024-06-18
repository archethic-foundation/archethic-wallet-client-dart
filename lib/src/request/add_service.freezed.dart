// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddServiceRequest _$AddServiceRequestFromJson(Map<String, dynamic> json) {
  return _AddServiceRequest.fromJson(json);
}

/// @nodoc
mixin _$AddServiceRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddServiceRequestCopyWith<AddServiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddServiceRequestCopyWith<$Res> {
  factory $AddServiceRequestCopyWith(
          AddServiceRequest value, $Res Function(AddServiceRequest) then) =
      _$AddServiceRequestCopyWithImpl<$Res, AddServiceRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AddServiceRequestCopyWithImpl<$Res, $Val extends AddServiceRequest>
    implements $AddServiceRequestCopyWith<$Res> {
  _$AddServiceRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$AddServiceRequestImplCopyWith<$Res>
    implements $AddServiceRequestCopyWith<$Res> {
  factory _$$AddServiceRequestImplCopyWith(_$AddServiceRequestImpl value,
          $Res Function(_$AddServiceRequestImpl) then) =
      __$$AddServiceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddServiceRequestImplCopyWithImpl<$Res>
    extends _$AddServiceRequestCopyWithImpl<$Res, _$AddServiceRequestImpl>
    implements _$$AddServiceRequestImplCopyWith<$Res> {
  __$$AddServiceRequestImplCopyWithImpl(_$AddServiceRequestImpl _value,
      $Res Function(_$AddServiceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddServiceRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddServiceRequestImpl extends _AddServiceRequest {
  const _$AddServiceRequestImpl({required this.name}) : super._();

  factory _$AddServiceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddServiceRequestImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AddServiceRequest(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddServiceRequestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddServiceRequestImplCopyWith<_$AddServiceRequestImpl> get copyWith =>
      __$$AddServiceRequestImplCopyWithImpl<_$AddServiceRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddServiceRequestImplToJson(
      this,
    );
  }
}

abstract class _AddServiceRequest extends AddServiceRequest {
  const factory _AddServiceRequest({required final String name}) =
      _$AddServiceRequestImpl;
  const _AddServiceRequest._() : super._();

  factory _AddServiceRequest.fromJson(Map<String, dynamic> json) =
      _$AddServiceRequestImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AddServiceRequestImplCopyWith<_$AddServiceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
