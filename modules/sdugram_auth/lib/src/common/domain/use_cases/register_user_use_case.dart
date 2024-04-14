import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/domain/behaviors/register_user_behavior.dart';
import 'package:sdugram_auth/src/common/domain/models/register_response.dart';
import 'package:sdugram_core/domain.dart';

@injectable
class RegisterUserUseCase
    implements Callable<RegisterParams, RegisterResponse> {
  final RegisterUserBehavior _registerUserBehavior;

  RegisterUserUseCase(this._registerUserBehavior);

  @override
  Future<Result<RegisterResponse>> call(RegisterParams params) async {
    return _registerUserBehavior.registerUser(
        username: params.username,
        password: params.password,
        email: params.email,
        passwordAgain: params.passwordRepeat);
  }
}

class RegisterParams {
  final String username;
  final String password;
  final String email;
  final String passwordRepeat;

  RegisterParams(
      {required this.username,
      required this.password,
      required this.email,
      required this.passwordRepeat});
}
