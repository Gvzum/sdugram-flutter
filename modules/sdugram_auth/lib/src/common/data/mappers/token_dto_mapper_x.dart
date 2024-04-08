import 'package:sdugram_auth/sdugram_auth.dart';

extension TokenDtoMapperX on TokenDto {
  Token toModel() =>
      Token(accessToken: accessToken, refreshToken: refreshToken);
}
