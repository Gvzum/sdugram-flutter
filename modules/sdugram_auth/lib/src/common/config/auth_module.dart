import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/sdugram_auth.dart';
import 'package:sdugram_core/config.dart';

@module
abstract class AuthModule {
  @factoryMethod
  AuthSource authSource(
    @Named('protected-dio') Dio dio,
    EnvironmentConfig repositoryConfig,
  ) =>
      AuthSource(
        dio,
        baseUrl: '${repositoryConfig.baseUrl}/api',
      );

  @factoryMethod
  GetLoginTokenBehavior getLogin(
      LoginService loginService,
      ) =>
      loginService;

  @factoryMethod
  GetAccessTokenBehavior getAccessToken(
      AuthService authService,
      ) =>
      authService;
}
