import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/domain/behaviors/get_login_token_behavior.dart';
import 'package:sdugram_auth/src/common/domain/models/token.dart';
import 'package:sdugram_core/domain.dart';

@injectable
class GetLoginTokenUseCase implements Callable<LoginParams, Token> {
  final GetLoginTokenBehavior _getLoginTokenBehavior;

  GetLoginTokenUseCase(this._getLoginTokenBehavior);

  @override
  Future<Result<Token>> call(LoginParams params) async {
    return _getLoginTokenBehavior.getLoginToken(
        username: params.username, password: params.password);
  }
}

class LoginParams {
  final String username;
  final String password;

  LoginParams({required this.username, required this.password});
}
