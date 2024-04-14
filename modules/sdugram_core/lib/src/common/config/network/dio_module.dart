import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/src/common/config/network/http_config.dart';

@module
abstract class DioModule {
  @Named('protected-dio')
  @injectable
  Dio getProtectedDio(
    @Named('auth-interceptor') Interceptor authInterceptor,
    @Named('log-interceptor') Interceptor logInterceptor,
  ) =>
      Dio(
        BaseOptions(
          baseUrl: '',
          receiveTimeout:
              const Duration(milliseconds: HttpConfig.receivedTimeout),
          connectTimeout:
              const Duration(milliseconds: HttpConfig.connectionTimeout),
        ),
      )..interceptors.addAll(
          [
            authInterceptor,
            logInterceptor,
          ],
        );

  @Named('session-code-auth-dio')
  @injectable
  Dio getSessionCodeAuthDio(
    @Named('auth-interceptor') Interceptor authInterceptor,
    @Named('log-interceptor') Interceptor logInterceptor,
  ) =>
      Dio(
        BaseOptions(
          baseUrl: '',
          receiveTimeout:
              const Duration(milliseconds: HttpConfig.receivedTimeout),
          connectTimeout:
              const Duration(milliseconds: HttpConfig.connectionTimeout),
        ),
      )..interceptors.addAll(
          [
            authInterceptor,
            logInterceptor,
          ],
        );

  @Named('no-auth-dio')
  @injectable
  Dio getNoAuthDio(
      @Named('log-interceptor') Interceptor logInterceptor,
      ) =>
      Dio(
        BaseOptions(
          baseUrl: '',
          receiveTimeout:
          const Duration(milliseconds: HttpConfig.receivedTimeout),
          connectTimeout:
          const Duration(milliseconds: HttpConfig.connectionTimeout),
        ),
      )..interceptors.addAll(
        [
          logInterceptor,
        ],
      );
}
