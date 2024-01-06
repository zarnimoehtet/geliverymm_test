// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/item.dart';

part 'item_response.freezed.dart';
part 'item_response.g.dart';

@freezed
class PickupItemResponse with _$PickupItemResponse {
  factory PickupItemResponse(
      bool? success,
      @JsonKey(name: 'data') PickupItem pickupItem,
      String? message,
      String? timestamp) = _PickupItemResponse;
  factory PickupItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupItemResponseFromJson(json);
}
