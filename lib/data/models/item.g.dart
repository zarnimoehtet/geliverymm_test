// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemImplAdapter extends TypeAdapter<_$ItemImpl> {
  @override
  final int typeId = 0;

  @override
  _$ItemImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ItemImpl(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$ItemImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.trackingId)
      ..writeByte(1)
      ..write(obj.osName)
      ..writeByte(2)
      ..write(obj.pickupDate)
      ..writeByte(3)
      ..write(obj.osPrimaryPhone)
      ..writeByte(4)
      ..write(obj.osTownshipName)
      ..writeByte(5)
      ..write(obj.totalWays);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      json['trackingId'] as String,
      json['osName'] as String,
      json['pickupDate'] as String,
      json['osPrimaryPhone'] as String,
      json['osTownshipName'] as String,
      json['totalWays'] as int,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'trackingId': instance.trackingId,
      'osName': instance.osName,
      'pickupDate': instance.pickupDate,
      'osPrimaryPhone': instance.osPrimaryPhone,
      'osTownshipName': instance.osTownshipName,
      'totalWays': instance.totalWays,
    };

_$PickupItemImpl _$$PickupItemImplFromJson(Map<String, dynamic> json) =>
    _$PickupItemImpl(
      (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalRecords'] as int?,
    );

Map<String, dynamic> _$$PickupItemImplToJson(_$PickupItemImpl instance) =>
    <String, dynamic>{
      'items': instance.itemList,
      'totalRecords': instance.totalRecords,
    };
