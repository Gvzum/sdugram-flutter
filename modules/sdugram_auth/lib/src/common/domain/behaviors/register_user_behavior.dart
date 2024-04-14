import 'package:sdugram_auth/src/common/domain/models/register_response.dart';
import 'package:sdugram_core/domain.dart';

abstract interface class RegisterUserBehavior {
  Future<Result<RegisterResponse>> registerUser(
      {required String username,
      required String password,
      required String email,
      required String passwordAgain});
}
