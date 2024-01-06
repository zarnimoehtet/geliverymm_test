// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  factory Token(
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "token_type") String type,
    @JsonKey(name: "refresh_token") String refreshToken,
    @JsonKey(name: "expires_in") int expireTime,
    @JsonKey(name: "scope") String scope,
  ) = _Token;
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
