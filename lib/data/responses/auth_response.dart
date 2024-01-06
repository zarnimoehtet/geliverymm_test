// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelivery_myanmar_test/data/models/token.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  factory AuthResponse(bool? success, @JsonKey(name: 'data') Token? token,
      String? message, String? timestamp) = _AuthResponse;
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
