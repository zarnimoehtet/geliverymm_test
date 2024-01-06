// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      json['success'] as bool?,
      json['data'] == null
          ? null
          : Token.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String?,
      json['timestamp'] as String?,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.token,
      'message': instance.message,
      'timestamp': instance.timestamp,
    };
