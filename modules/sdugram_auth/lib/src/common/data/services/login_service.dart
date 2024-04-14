import 'dart:async';

import 'package:dio/dio.dart';
import 'package:sdugram_auth/src/common/data/dtos/auth_request_dto.dart';
import 'package:sdugram_auth/src/common/data/dtos/token_dto.dart';
import 'package:sdugram_auth/src/common/data/dtos/token_state.dart';
import 'package:sdugram_auth/src/common/data/mappers/token_dto_mapper_x.dart';
import 'package:sdugram_auth/src/common/data/services/auth_service.dart';
import 'package:sdugram_auth/src/common/data/sources/auth_source.dart';
import 'package:sdugram_auth/src/common/domain/behaviors/get_login_token_behavior.dart';
import 'package:sdugram_auth/src/common/domain/models/token.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/domain.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginService implements GetLoginTokenBehavior {
  final AuthSource _authSource;
  final AuthService _authService;

  LoginService(
    this._authSource,
    this._authService,
  );

  @override
  Future<Result<Token>> getLoginToken(
      {required String username, required String password}) async {
    try {
      final result = await _authSource.getToken(
          body: AuthRequestDto(username: username, password: password));

      final resultAccessToken = SuccessResult<TokenDto>(result).value;

      final token = TokenDto(
        accessToken: resultAccessToken.accessToken,
        refreshToken: resultAccessToken.refreshToken,
      );

      await _authService.storeUserDataToSecureStorage(
        password: password,
        token: token,
        username: username,
      );

      await _authService.setTokenState(TokenUpdated(token));

      return SuccessResult(result.toModel());
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }
}
