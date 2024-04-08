import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_auth/src/common/domain/models/token.dart';

part 'token_dto.g.dart';

@JsonSerializable()
class TokenDto implements Token {
  @override
  @JsonKey(name: 'access')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh')
  final String refreshToken;

  late final Map<String, dynamic> accessPayload = _parseJwt(accessToken);
  late final Map<String, dynamic> refreshPayload = _parseJwt(refreshToken);

  TokenDto({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TokenDtoToJson(this);
}


Map<String, dynamic> _parseJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('Invalid token');
  }

  return json.decode(utf8.decode(base64.decode(base64.normalize(parts[1]))));
}
