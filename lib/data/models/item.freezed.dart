// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @HiveField(0)
  String get trackingId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get osName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get pickupDate => throw _privateConstructorUsedError;
  @HiveField(3)
  String get osPrimaryPhone => throw _privateConstructorUsedError;
  @HiveField(4)
  String get osTownshipName => throw _privateConstructorUsedError;
  @HiveField(5)
  int get totalWays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@HiveField(0) String trackingId,
      @HiveField(1) String osName,
      @HiveField(2) String pickupDate,
      @HiveField(3) String osPrimaryPhone,
      @HiveField(4) String osTownshipName,
      @HiveField(5) int totalWays});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingId = null,
    Object? osName = null,
    Object? pickupDate = null,
    Object? osPrimaryPhone = null,
    Object? osTownshipName = null,
    Object? totalWays = null,
  }) {
    return _then(_value.copyWith(
      trackingId: null == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String,
      osName: null == osName
          ? _value.osName
          : osName // ignore: cast_nullable_to_non_nullable
              as String,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as String,
      osPrimaryPhone: null == osPrimaryPhone
          ? _value.osPrimaryPhone
          : osPrimaryPhone // ignore: cast_nullable_to_non_nullable
              as String,
      osTownshipName: null == osTownshipName
          ? _value.osTownshipName
          : osTownshipName // ignore: cast_nullable_to_non_nullable
              as String,
      totalWays: null == totalWays
          ? _value.totalWays
          : totalWays // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String trackingId,
      @HiveField(1) String osName,
      @HiveField(2) String pickupDate,
      @HiveField(3) String osPrimaryPhone,
      @HiveField(4) String osTownshipName,
      @HiveField(5) int totalWays});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingId = null,
    Object? osName = null,
    Object? pickupDate = null,
    Object? osPrimaryPhone = null,
    Object? osTownshipName = null,
    Object? totalWays = null,
  }) {
    return _then(_$ItemImpl(
      null == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String,
      null == osName
          ? _value.osName
          : osName // ignore: cast_nullable_to_non_nullable
              as String,
      null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == osPrimaryPhone
          ? _value.osPrimaryPhone
          : osPrimaryPhone // ignore: cast_nullable_to_non_nullable
              as String,
      null == osTownshipName
          ? _value.osTownshipName
          : osTownshipName // ignore: cast_nullable_to_non_nullable
              as String,
      null == totalWays
          ? _value.totalWays
          : totalWays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$ItemImpl implements _Item {
  _$ItemImpl(
      @HiveField(0) this.trackingId,
      @HiveField(1) this.osName,
      @HiveField(2) this.pickupDate,
      @HiveField(3) this.osPrimaryPhone,
      @HiveField(4) this.osTownshipName,
      @HiveField(5) this.totalWays);

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  @HiveField(0)
  final String trackingId;
  @override
  @HiveField(1)
  final String osName;
  @override
  @HiveField(2)
  final String pickupDate;
  @override
  @HiveField(3)
  final String osPrimaryPhone;
  @override
  @HiveField(4)
  final String osTownshipName;
  @override
  @HiveField(5)
  final int totalWays;

  @override
  String toString() {
    return 'Item(trackingId: $trackingId, osName: $osName, pickupDate: $pickupDate, osPrimaryPhone: $osPrimaryPhone, osTownshipName: $osTownshipName, totalWays: $totalWays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.osName, osName) || other.osName == osName) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.osPrimaryPhone, osPrimaryPhone) ||
                other.osPrimaryPhone == osPrimaryPhone) &&
            (identical(other.osTownshipName, osTownshipName) ||
                other.osTownshipName == osTownshipName) &&
            (identical(other.totalWays, totalWays) ||
                other.totalWays == totalWays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trackingId, osName, pickupDate,
      osPrimaryPhone, osTownshipName, totalWays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  factory _Item(
      @HiveField(0) final String trackingId,
      @HiveField(1) final String osName,
      @HiveField(2) final String pickupDate,
      @HiveField(3) final String osPrimaryPhone,
      @HiveField(4) final String osTownshipName,
      @HiveField(5) final int totalWays) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  @HiveField(0)
  String get trackingId;
  @override
  @HiveField(1)
  String get osName;
  @override
  @HiveField(2)
  String get pickupDate;
  @override
  @HiveField(3)
  String get osPrimaryPhone;
  @override
  @HiveField(4)
  String get osTownshipName;
  @override
  @HiveField(5)
  int get totalWays;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PickupItem _$PickupItemFromJson(Map<String, dynamic> json) {
  return _PickupItem.fromJson(json);
}

/// @nodoc
mixin _$PickupItem {
  @JsonKey(name: "items")
  List<Item> get itemList => throw _privateConstructorUsedError;
  int? get totalRecords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupItemCopyWith<PickupItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupItemCopyWith<$Res> {
  factory $PickupItemCopyWith(
          PickupItem value, $Res Function(PickupItem) then) =
      _$PickupItemCopyWithImpl<$Res, PickupItem>;
  @useResult
  $Res call({@JsonKey(name: "items") List<Item> itemList, int? totalRecords});
}

/// @nodoc
class _$PickupItemCopyWithImpl<$Res, $Val extends PickupItem>
    implements $PickupItemCopyWith<$Res> {
  _$PickupItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = null,
    Object? totalRecords = freezed,
  }) {
    return _then(_value.copyWith(
      itemList: null == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickupItemImplCopyWith<$Res>
    implements $PickupItemCopyWith<$Res> {
  factory _$$PickupItemImplCopyWith(
          _$PickupItemImpl value, $Res Function(_$PickupItemImpl) then) =
      __$$PickupItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "items") List<Item> itemList, int? totalRecords});
}

/// @nodoc
class __$$PickupItemImplCopyWithImpl<$Res>
    extends _$PickupItemCopyWithImpl<$Res, _$PickupItemImpl>
    implements _$$PickupItemImplCopyWith<$Res> {
  __$$PickupItemImplCopyWithImpl(
      _$PickupItemImpl _value, $Res Function(_$PickupItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = null,
    Object? totalRecords = freezed,
  }) {
    return _then(_$PickupItemImpl(
      null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PickupItemImpl implements _PickupItem {
  _$PickupItemImpl(
      @JsonKey(name: "items") final List<Item> itemList, this.totalRecords)
      : _itemList = itemList;

  factory _$PickupItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickupItemImplFromJson(json);

  final List<Item> _itemList;
  @override
  @JsonKey(name: "items")
  List<Item> get itemList {
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  final int? totalRecords;

  @override
  String toString() {
    return 'PickupItem(itemList: $itemList, totalRecords: $totalRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickupItemImpl &&
            const DeepCollectionEquality().equals(other._itemList, _itemList) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_itemList), totalRecords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickupItemImplCopyWith<_$PickupItemImpl> get copyWith =>
      __$$PickupItemImplCopyWithImpl<_$PickupItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PickupItemImplToJson(
      this,
    );
  }
}

abstract class _PickupItem implements PickupItem {
  factory _PickupItem(@JsonKey(name: "items") final List<Item> itemList,
      final int? totalRecords) = _$PickupItemImpl;

  factory _PickupItem.fromJson(Map<String, dynamic> json) =
      _$PickupItemImpl.fromJson;

  @override
  @JsonKey(name: "items")
  List<Item> get itemList;
  @override
  int? get totalRecords;
  @override
  @JsonKey(ignore: true)
  _$$PickupItemImplCopyWith<_$PickupItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
