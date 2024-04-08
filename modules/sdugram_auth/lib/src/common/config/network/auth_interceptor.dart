import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/domain/behaviors/get_access_token_behavior.dart';
import 'package:sdugram_core/domain.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

@Named('auth-interceptor')
@LazySingleton(as: Interceptor)
class AuthInterceptor extends Interceptor {
  final GetAccessTokenBehavior _accessTokenBehavior;

  AuthInterceptor(this._accessTokenBehavior);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _accessTokenBehavior.getAccessToken();
    options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err is UnauthorizedFailure) {
      navigatorKey.currentContext?.router.pushNamed('home');
    }
    super.onError(err, handler);
  }
}
