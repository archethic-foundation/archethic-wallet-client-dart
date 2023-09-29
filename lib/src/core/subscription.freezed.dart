// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Subscription<DataT> {
  String get id => throw _privateConstructorUsedError;
  Stream<DataT> get updates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionCopyWith<DataT, Subscription<DataT>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<DataT, $Res> {
  factory $SubscriptionCopyWith(
          Subscription<DataT> value, $Res Function(Subscription<DataT>) then) =
      _$SubscriptionCopyWithImpl<DataT, $Res, Subscription<DataT>>;
  @useResult
  $Res call({String id, Stream<DataT> updates});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<DataT, $Res, $Val extends Subscription<DataT>>
    implements $SubscriptionCopyWith<DataT, $Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updates: null == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as Stream<DataT>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<DataT, $Res>
    implements $SubscriptionCopyWith<DataT, $Res> {
  factory _$$SubscriptionImplCopyWith(_$SubscriptionImpl<DataT> value,
          $Res Function(_$SubscriptionImpl<DataT>) then) =
      __$$SubscriptionImplCopyWithImpl<DataT, $Res>;
  @override
  @useResult
  $Res call({String id, Stream<DataT> updates});
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<DataT, $Res>
    extends _$SubscriptionCopyWithImpl<DataT, $Res, _$SubscriptionImpl<DataT>>
    implements _$$SubscriptionImplCopyWith<DataT, $Res> {
  __$$SubscriptionImplCopyWithImpl(_$SubscriptionImpl<DataT> _value,
      $Res Function(_$SubscriptionImpl<DataT>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updates = null,
  }) {
    return _then(_$SubscriptionImpl<DataT>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updates: null == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as Stream<DataT>,
    ));
  }
}

/// @nodoc

class _$SubscriptionImpl<DataT> extends _Subscription<DataT> {
  const _$SubscriptionImpl({required this.id, required this.updates})
      : super._();

  @override
  final String id;
  @override
  final Stream<DataT> updates;

  @override
  String toString() {
    return 'Subscription<$DataT>(id: $id, updates: $updates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl<DataT> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updates, updates) || other.updates == updates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, updates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<DataT, _$SubscriptionImpl<DataT>> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<DataT, _$SubscriptionImpl<DataT>>(
          this, _$identity);
}

abstract class _Subscription<DataT> extends Subscription<DataT> {
  const factory _Subscription(
      {required final String id,
      required final Stream<DataT> updates}) = _$SubscriptionImpl<DataT>;
  const _Subscription._() : super._();

  @override
  String get id;
  @override
  Stream<DataT> get updates;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionImplCopyWith<DataT, _$SubscriptionImpl<DataT>> get copyWith =>
      throw _privateConstructorUsedError;
}

RPCSubscriptionUpdateDTO _$RPCSubscriptionUpdateDTOFromJson(
    Map<String, dynamic> json) {
  return _RPCSubscriptionUpdateDTO.fromJson(json);
}

/// @nodoc
mixin _$RPCSubscriptionUpdateDTO {
  String get subscriptionId => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RPCSubscriptionUpdateDTOCopyWith<RPCSubscriptionUpdateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPCSubscriptionUpdateDTOCopyWith<$Res> {
  factory $RPCSubscriptionUpdateDTOCopyWith(RPCSubscriptionUpdateDTO value,
          $Res Function(RPCSubscriptionUpdateDTO) then) =
      _$RPCSubscriptionUpdateDTOCopyWithImpl<$Res, RPCSubscriptionUpdateDTO>;
  @useResult
  $Res call({String subscriptionId, Map<String, dynamic> data});
}

/// @nodoc
class _$RPCSubscriptionUpdateDTOCopyWithImpl<$Res,
        $Val extends RPCSubscriptionUpdateDTO>
    implements $RPCSubscriptionUpdateDTOCopyWith<$Res> {
  _$RPCSubscriptionUpdateDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RPCSubscriptionUpdateDTOImplCopyWith<$Res>
    implements $RPCSubscriptionUpdateDTOCopyWith<$Res> {
  factory _$$RPCSubscriptionUpdateDTOImplCopyWith(
          _$RPCSubscriptionUpdateDTOImpl value,
          $Res Function(_$RPCSubscriptionUpdateDTOImpl) then) =
      __$$RPCSubscriptionUpdateDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subscriptionId, Map<String, dynamic> data});
}

/// @nodoc
class __$$RPCSubscriptionUpdateDTOImplCopyWithImpl<$Res>
    extends _$RPCSubscriptionUpdateDTOCopyWithImpl<$Res,
        _$RPCSubscriptionUpdateDTOImpl>
    implements _$$RPCSubscriptionUpdateDTOImplCopyWith<$Res> {
  __$$RPCSubscriptionUpdateDTOImplCopyWithImpl(
      _$RPCSubscriptionUpdateDTOImpl _value,
      $Res Function(_$RPCSubscriptionUpdateDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
    Object? data = null,
  }) {
    return _then(_$RPCSubscriptionUpdateDTOImpl(
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RPCSubscriptionUpdateDTOImpl extends _RPCSubscriptionUpdateDTO {
  const _$RPCSubscriptionUpdateDTOImpl(
      {required this.subscriptionId, required final Map<String, dynamic> data})
      : _data = data,
        super._();

  factory _$RPCSubscriptionUpdateDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RPCSubscriptionUpdateDTOImplFromJson(json);

  @override
  final String subscriptionId;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'RPCSubscriptionUpdateDTO(subscriptionId: $subscriptionId, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RPCSubscriptionUpdateDTOImpl &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, subscriptionId, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RPCSubscriptionUpdateDTOImplCopyWith<_$RPCSubscriptionUpdateDTOImpl>
      get copyWith => __$$RPCSubscriptionUpdateDTOImplCopyWithImpl<
          _$RPCSubscriptionUpdateDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RPCSubscriptionUpdateDTOImplToJson(
      this,
    );
  }
}

abstract class _RPCSubscriptionUpdateDTO extends RPCSubscriptionUpdateDTO {
  const factory _RPCSubscriptionUpdateDTO(
          {required final String subscriptionId,
          required final Map<String, dynamic> data}) =
      _$RPCSubscriptionUpdateDTOImpl;
  const _RPCSubscriptionUpdateDTO._() : super._();

  factory _RPCSubscriptionUpdateDTO.fromJson(Map<String, dynamic> json) =
      _$RPCSubscriptionUpdateDTOImpl.fromJson;

  @override
  String get subscriptionId;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$RPCSubscriptionUpdateDTOImplCopyWith<_$RPCSubscriptionUpdateDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
