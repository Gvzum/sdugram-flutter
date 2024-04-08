import 'package:sdugram_auth/src/common/data/dtos/token_dto.dart';

sealed class TokenState {}

final class TokenUpdated extends TokenState {
  final TokenDto token;

  TokenUpdated(this.token);
}

final class TokenCleared extends TokenState {}

extension TokenStateX on TokenState {
  TokenDto? get token {
    switch (this) {
      case TokenUpdated(token: final token):
        return token;
      case TokenCleared():
        return null;
    }
  }
}
