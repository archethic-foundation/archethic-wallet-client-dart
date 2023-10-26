// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_endpoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetEndpointResult _$GetEndpointResultFromJson(Map<String, dynamic> json) {
  return _GetEndpointResult.fromJson(json);
}

/// @nodoc
mixin _$GetEndpointResult {
  String get endpointUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEndpointResultCopyWith<GetEndpointResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEndpointResultCopyWith<$Res> {
  factory $GetEndpointResultCopyWith(
          GetEndpointResult value, $Res Function(GetEndpointResult) then) =
      _$GetEndpointResultCopyWithImpl<$Res, GetEndpointResult>;
  @useResult
  $Res call({String endpointUrl});
}

/// @nodoc
class _$GetEndpointResultCopyWithImpl<$Res, $Val extends GetEndpointResult>
    implements $GetEndpointResultCopyWith<$Res> {
  _$GetEndpointResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpointUrl = null,
  }) {
    return _then(_value.copyWith(
      endpointUrl: null == endpointUrl
          ? _value.endpointUrl
          : endpointUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEndpointResultImplCopyWith<$Res>
    implements $GetEndpointResultCopyWith<$Res> {
  factory _$$GetEndpointResultImplCopyWith(_$GetEndpointResultImpl value,
          $Res Function(_$GetEndpointResultImpl) then) =
      __$$GetEndpointResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String endpointUrl});
}

/// @nodoc
class __$$GetEndpointResultImplCopyWithImpl<$Res>
    extends _$GetEndpointResultCopyWithImpl<$Res, _$GetEndpointResultImpl>
    implements _$$GetEndpointResultImplCopyWith<$Res> {
  __$$GetEndpointResultImplCopyWithImpl(_$GetEndpointResultImpl _value,
      $Res Function(_$GetEndpointResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpointUrl = null,
  }) {
    return _then(_$GetEndpointResultImpl(
      endpointUrl: null == endpointUrl
          ? _value.endpointUrl
          : endpointUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEndpointResultImpl extends _GetEndpointResult {
  const _$GetEndpointResultImpl({required this.endpointUrl}) : super._();

  factory _$GetEndpointResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEndpointResultImplFromJson(json);

  @override
  final String endpointUrl;

  @override
  String toString() {
    return 'GetEndpointResult(endpointUrl: $endpointUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEndpointResultImpl &&
            (identical(other.endpointUrl, endpointUrl) ||
                other.endpointUrl == endpointUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, endpointUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEndpointResultImplCopyWith<_$GetEndpointResultImpl> get copyWith =>
      __$$GetEndpointResultImplCopyWithImpl<_$GetEndpointResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEndpointResultImplToJson(
      this,
    );
  }
}

abstract class _GetEndpointResult extends GetEndpointResult {
  const factory _GetEndpointResult({required final String endpointUrl}) =
      _$GetEndpointResultImpl;
  const _GetEndpointResult._() : super._();

  factory _GetEndpointResult.fromJson(Map<String, dynamic> json) =
      _$GetEndpointResultImpl.fromJson;

  @override
  String get endpointUrl;
  @override
  @JsonKey(ignore: true)
  _$$GetEndpointResultImplCopyWith<_$GetEndpointResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetEndpointRequest _$GetEndpointRequestFromJson(Map<String, dynamic> json) {
  return _GetEndpointRequest.fromJson(json);
}

/// @nodoc
mixin _$GetEndpointRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEndpointRequestCopyWith<$Res> {
  factory $GetEndpointRequestCopyWith(
          GetEndpointRequest value, $Res Function(GetEndpointRequest) then) =
      _$GetEndpointRequestCopyWithImpl<$Res, GetEndpointRequest>;
}

/// @nodoc
class _$GetEndpointRequestCopyWithImpl<$Res, $Val extends GetEndpointRequest>
    implements $GetEndpointRequestCopyWith<$Res> {
  _$GetEndpointRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetEndpointRequestImplCopyWith<$Res> {
  factory _$$GetEndpointRequestImplCopyWith(_$GetEndpointRequestImpl value,
          $Res Function(_$GetEndpointRequestImpl) then) =
      __$$GetEndpointRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEndpointRequestImplCopyWithImpl<$Res>
    extends _$GetEndpointRequestCopyWithImpl<$Res, _$GetEndpointRequestImpl>
    implements _$$GetEndpointRequestImplCopyWith<$Res> {
  __$$GetEndpointRequestImplCopyWithImpl(_$GetEndpointRequestImpl _value,
      $Res Function(_$GetEndpointRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$GetEndpointRequestImpl extends _GetEndpointRequest {
  const _$GetEndpointRequestImpl() : super._();

  factory _$GetEndpointRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEndpointRequestImplFromJson(json);

  @override
  String toString() {
    return 'GetEndpointRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEndpointRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEndpointRequestImplToJson(
      this,
    );
  }
}

abstract class _GetEndpointRequest extends GetEndpointRequest {
  const factory _GetEndpointRequest() = _$GetEndpointRequestImpl;
  const _GetEndpointRequest._() : super._();

  factory _GetEndpointRequest.fromJson(Map<String, dynamic> json) =
      _$GetEndpointRequestImpl.fromJson;
}
