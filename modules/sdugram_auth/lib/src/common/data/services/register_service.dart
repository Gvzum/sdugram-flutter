import 'dart:async';

import 'package:dio/dio.dart';
import 'package:sdugram_auth/src/common/data/dtos/register_request_dto.dart';
import 'package:sdugram_auth/src/common/data/dtos/token_state.dart';
import 'package:sdugram_auth/src/common/data/services/auth_service.dart';
import 'package:sdugram_auth/src/common/data/sources/register_source.dart';
import 'package:sdugram_auth/src/common/domain/behaviors/register_user_behavior.dart';
import 'package:sdugram_auth/src/common/domain/models/register_response.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/domain.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RegisterService implements RegisterUserBehavior {
  final RegisterSource _registerSource;
  final AuthService _authService;

  RegisterService(
    this._registerSource,
    this._authService,
  );

  @override
  Future<Result<RegisterResponse>> registerUser(
      {required String username,
      required String password,
      required String email,
      required String passwordAgain}) async {
    await _authService.setTokenState(TokenCleared());
    try {
      final response = await _registerSource.register(
          body: RegisterRequestDto(
              email: email,
              username: username,
              password: password,
              passwordAgain: passwordAgain));

      return SuccessResult(response);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }
}
