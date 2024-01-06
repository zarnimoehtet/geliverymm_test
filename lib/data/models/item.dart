// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  @HiveType(typeId: 0)
  factory Item(
    @HiveField(0) String trackingId,
    @HiveField(1) String osName,
    @HiveField(2) String pickupDate,
    @HiveField(3) String osPrimaryPhone,
    @HiveField(4) String osTownshipName,
    @HiveField(5) int totalWays,
  ) = _Item;
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class PickupItem with _$PickupItem {
  factory PickupItem(
    @JsonKey(name: "items") List<Item> itemList,
    int? totalRecords,
  ) = _PickupItem;
  factory PickupItem.fromJson(Map<String, dynamic> json) =>
      _$PickupItemFromJson(json);
}
