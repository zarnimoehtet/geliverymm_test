// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PickupItemResponse _$PickupItemResponseFromJson(Map<String, dynamic> json) {
  return _PickupItemResponse.fromJson(json);
}

/// @nodoc
mixin _$PickupItemResponse {
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PickupItem get pickupItem => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupItemResponseCopyWith<PickupItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupItemResponseCopyWith<$Res> {
  factory $PickupItemResponseCopyWith(
          PickupItemResponse value, $Res Function(PickupItemResponse) then) =
      _$PickupItemResponseCopyWithImpl<$Res, PickupItemResponse>;
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'data') PickupItem pickupItem,
      String? message,
      String? timestamp});

  $PickupItemCopyWith<$Res> get pickupItem;
}

/// @nodoc
class _$PickupItemResponseCopyWithImpl<$Res, $Val extends PickupItemResponse>
    implements $PickupItemResponseCopyWith<$Res> {
  _$PickupItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? pickupItem = null,
    Object? message = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      pickupItem: null == pickupItem
          ? _value.pickupItem
          : pickupItem // ignore: cast_nullable_to_non_nullable
              as PickupItem,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PickupItemCopyWith<$Res> get pickupItem {
    return $PickupItemCopyWith<$Res>(_value.pickupItem, (value) {
      return _then(_value.copyWith(pickupItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PickupItemResponseImplCopyWith<$Res>
    implements $PickupItemResponseCopyWith<$Res> {
  factory _$$PickupItemResponseImplCopyWith(_$PickupItemResponseImpl value,
          $Res Function(_$PickupItemResponseImpl) then) =
      __$$PickupItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      @JsonKey(name: 'data') PickupItem pickupItem,
      String? message,
      String? timestamp});

  @override
  $PickupItemCopyWith<$Res> get pickupItem;
}

/// @nodoc
class __$$PickupItemResponseImplCopyWithImpl<$Res>
    extends _$PickupItemResponseCopyWithImpl<$Res, _$PickupItemResponseImpl>
    implements _$$PickupItemResponseImplCopyWith<$Res> {
  __$$PickupItemResponseImplCopyWithImpl(_$PickupItemResponseImpl _value,
      $Res Function(_$PickupItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? pickupItem = null,
    Object? message = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$PickupItemResponseImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      null == pickupItem
          ? _value.pickupItem
          : pickupItem // ignore: cast_nullable_to_non_nullable
              as PickupItem,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PickupItemResponseImpl implements _PickupItemResponse {
  _$PickupItemResponseImpl(this.success, @JsonKey(name: 'data') this.pickupItem,
      this.message, this.timestamp);

  factory _$PickupItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickupItemResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  @JsonKey(name: 'data')
  final PickupItem pickupItem;
  @override
  final String? message;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'PickupItemResponse(success: $success, pickupItem: $pickupItem, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickupItemResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.pickupItem, pickupItem) ||
                other.pickupItem == pickupItem) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, pickupItem, message, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickupItemResponseImplCopyWith<_$PickupItemResponseImpl> get copyWith =>
      __$$PickupItemResponseImplCopyWithImpl<_$PickupItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PickupItemResponseImplToJson(
      this,
    );
  }
}

abstract class _PickupItemResponse implements PickupItemResponse {
  factory _PickupItemResponse(
      final bool? success,
      @JsonKey(name: 'data') final PickupItem pickupItem,
      final String? message,
      final String? timestamp) = _$PickupItemResponseImpl;

  factory _PickupItemResponse.fromJson(Map<String, dynamic> json) =
      _$PickupItemResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  @JsonKey(name: 'data')
  PickupItem get pickupItem;
  @override
  String? get message;
  @override
  String? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$PickupItemResponseImplCopyWith<_$PickupItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
