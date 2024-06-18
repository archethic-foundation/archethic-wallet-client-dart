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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  bool operator ==(Object other) {
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

SubscriptionUpdate _$SubscriptionUpdateFromJson(Map<String, dynamic> json) {
  return _SubscriptionUpdate.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionUpdate {
  String get subscriptionId => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionUpdateCopyWith<SubscriptionUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionUpdateCopyWith<$Res> {
  factory $SubscriptionUpdateCopyWith(
          SubscriptionUpdate value, $Res Function(SubscriptionUpdate) then) =
      _$SubscriptionUpdateCopyWithImpl<$Res, SubscriptionUpdate>;
  @useResult
  $Res call({String subscriptionId, Map<String, dynamic> data});
}

/// @nodoc
class _$SubscriptionUpdateCopyWithImpl<$Res, $Val extends SubscriptionUpdate>
    implements $SubscriptionUpdateCopyWith<$Res> {
  _$SubscriptionUpdateCopyWithImpl(this._value, this._then);

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
abstract class _$$SubscriptionUpdateImplCopyWith<$Res>
    implements $SubscriptionUpdateCopyWith<$Res> {
  factory _$$SubscriptionUpdateImplCopyWith(_$SubscriptionUpdateImpl value,
          $Res Function(_$SubscriptionUpdateImpl) then) =
      __$$SubscriptionUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subscriptionId, Map<String, dynamic> data});
}

/// @nodoc
class __$$SubscriptionUpdateImplCopyWithImpl<$Res>
    extends _$SubscriptionUpdateCopyWithImpl<$Res, _$SubscriptionUpdateImpl>
    implements _$$SubscriptionUpdateImplCopyWith<$Res> {
  __$$SubscriptionUpdateImplCopyWithImpl(_$SubscriptionUpdateImpl _value,
      $Res Function(_$SubscriptionUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
    Object? data = null,
  }) {
    return _then(_$SubscriptionUpdateImpl(
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
class _$SubscriptionUpdateImpl extends _SubscriptionUpdate {
  const _$SubscriptionUpdateImpl(
      {required this.subscriptionId, required final Map<String, dynamic> data})
      : _data = data,
        super._();

  factory _$SubscriptionUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionUpdateImplFromJson(json);

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
    return 'SubscriptionUpdate(subscriptionId: $subscriptionId, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionUpdateImpl &&
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
  _$$SubscriptionUpdateImplCopyWith<_$SubscriptionUpdateImpl> get copyWith =>
      __$$SubscriptionUpdateImplCopyWithImpl<_$SubscriptionUpdateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionUpdateImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionUpdate extends SubscriptionUpdate {
  const factory _SubscriptionUpdate(
      {required final String subscriptionId,
      required final Map<String, dynamic> data}) = _$SubscriptionUpdateImpl;
  const _SubscriptionUpdate._() : super._();

  factory _SubscriptionUpdate.fromJson(Map<String, dynamic> json) =
      _$SubscriptionUpdateImpl.fromJson;

  @override
  String get subscriptionId;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionUpdateImplCopyWith<_$SubscriptionUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscribeResponse _$SubscribeResponseFromJson(Map<String, dynamic> json) {
  return _SubscribeResponse.fromJson(json);
}

/// @nodoc
mixin _$SubscribeResponse {
  String get subscriptionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribeResponseCopyWith<SubscribeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeResponseCopyWith<$Res> {
  factory $SubscribeResponseCopyWith(
          SubscribeResponse value, $Res Function(SubscribeResponse) then) =
      _$SubscribeResponseCopyWithImpl<$Res, SubscribeResponse>;
  @useResult
  $Res call({String subscriptionId});
}

/// @nodoc
class _$SubscribeResponseCopyWithImpl<$Res, $Val extends SubscribeResponse>
    implements $SubscribeResponseCopyWith<$Res> {
  _$SubscribeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
  }) {
    return _then(_value.copyWith(
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscribeResponseImplCopyWith<$Res>
    implements $SubscribeResponseCopyWith<$Res> {
  factory _$$SubscribeResponseImplCopyWith(_$SubscribeResponseImpl value,
          $Res Function(_$SubscribeResponseImpl) then) =
      __$$SubscribeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subscriptionId});
}

/// @nodoc
class __$$SubscribeResponseImplCopyWithImpl<$Res>
    extends _$SubscribeResponseCopyWithImpl<$Res, _$SubscribeResponseImpl>
    implements _$$SubscribeResponseImplCopyWith<$Res> {
  __$$SubscribeResponseImplCopyWithImpl(_$SubscribeResponseImpl _value,
      $Res Function(_$SubscribeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
  }) {
    return _then(_$SubscribeResponseImpl(
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscribeResponseImpl extends _SubscribeResponse {
  const _$SubscribeResponseImpl({required this.subscriptionId}) : super._();

  factory _$SubscribeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscribeResponseImplFromJson(json);

  @override
  final String subscriptionId;

  @override
  String toString() {
    return 'SubscribeResponse(subscriptionId: $subscriptionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeResponseImpl &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscriptionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscribeResponseImplCopyWith<_$SubscribeResponseImpl> get copyWith =>
      __$$SubscribeResponseImplCopyWithImpl<_$SubscribeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscribeResponseImplToJson(
      this,
    );
  }
}

abstract class _SubscribeResponse extends SubscribeResponse {
  const factory _SubscribeResponse({required final String subscriptionId}) =
      _$SubscribeResponseImpl;
  const _SubscribeResponse._() : super._();

  factory _SubscribeResponse.fromJson(Map<String, dynamic> json) =
      _$SubscribeResponseImpl.fromJson;

  @override
  String get subscriptionId;
  @override
  @JsonKey(ignore: true)
  _$$SubscribeResponseImplCopyWith<_$SubscribeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnsubscribeRequest _$UnsubscribeRequestFromJson(Map<String, dynamic> json) {
  return _UnsubscribeRequest.fromJson(json);
}

/// @nodoc
mixin _$UnsubscribeRequest {
  String get subscriptionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsubscribeRequestCopyWith<UnsubscribeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsubscribeRequestCopyWith<$Res> {
  factory $UnsubscribeRequestCopyWith(
          UnsubscribeRequest value, $Res Function(UnsubscribeRequest) then) =
      _$UnsubscribeRequestCopyWithImpl<$Res, UnsubscribeRequest>;
  @useResult
  $Res call({String subscriptionId});
}

/// @nodoc
class _$UnsubscribeRequestCopyWithImpl<$Res, $Val extends UnsubscribeRequest>
    implements $UnsubscribeRequestCopyWith<$Res> {
  _$UnsubscribeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
  }) {
    return _then(_value.copyWith(
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnsubscribeRequestImplCopyWith<$Res>
    implements $UnsubscribeRequestCopyWith<$Res> {
  factory _$$UnsubscribeRequestImplCopyWith(_$UnsubscribeRequestImpl value,
          $Res Function(_$UnsubscribeRequestImpl) then) =
      __$$UnsubscribeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subscriptionId});
}

/// @nodoc
class __$$UnsubscribeRequestImplCopyWithImpl<$Res>
    extends _$UnsubscribeRequestCopyWithImpl<$Res, _$UnsubscribeRequestImpl>
    implements _$$UnsubscribeRequestImplCopyWith<$Res> {
  __$$UnsubscribeRequestImplCopyWithImpl(_$UnsubscribeRequestImpl _value,
      $Res Function(_$UnsubscribeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
  }) {
    return _then(_$UnsubscribeRequestImpl(
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsubscribeRequestImpl extends _UnsubscribeRequest {
  const _$UnsubscribeRequestImpl({required this.subscriptionId}) : super._();

  factory _$UnsubscribeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsubscribeRequestImplFromJson(json);

  @override
  final String subscriptionId;

  @override
  String toString() {
    return 'UnsubscribeRequest(subscriptionId: $subscriptionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsubscribeRequestImpl &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscriptionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsubscribeRequestImplCopyWith<_$UnsubscribeRequestImpl> get copyWith =>
      __$$UnsubscribeRequestImplCopyWithImpl<_$UnsubscribeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsubscribeRequestImplToJson(
      this,
    );
  }
}

abstract class _UnsubscribeRequest extends UnsubscribeRequest {
  const factory _UnsubscribeRequest({required final String subscriptionId}) =
      _$UnsubscribeRequestImpl;
  const _UnsubscribeRequest._() : super._();

  factory _UnsubscribeRequest.fromJson(Map<String, dynamic> json) =
      _$UnsubscribeRequestImpl.fromJson;

  @override
  String get subscriptionId;
  @override
  @JsonKey(ignore: true)
  _$$UnsubscribeRequestImplCopyWith<_$UnsubscribeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
