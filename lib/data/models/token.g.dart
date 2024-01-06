// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      json['access_token'] as String,
      json['token_type'] as String,
      json['refresh_token'] as String,
      json['expires_in'] as int,
      json['scope'] as String,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.type,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expireTime,
      'scope': instance.scope,
    };
