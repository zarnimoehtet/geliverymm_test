// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PickupItemResponseImpl _$$PickupItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PickupItemResponseImpl(
      json['success'] as bool?,
      PickupItem.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String?,
      json['timestamp'] as String?,
    );

Map<String, dynamic> _$$PickupItemResponseImplToJson(
        _$PickupItemResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.pickupItem,
      'message': instance.message,
      'timestamp': instance.timestamp,
    };
