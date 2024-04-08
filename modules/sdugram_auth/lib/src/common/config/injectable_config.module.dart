//@GeneratedMicroModule;SdugramAuthPackageModule;package:sdugram_auth/src/common/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;
import 'package:sdugram_auth/sdugram_auth.dart' as _i4;
import 'package:sdugram_auth/src/common/config/auth_module.dart' as _i14;
import 'package:sdugram_auth/src/common/config/network/auth_interceptor.dart'
    as _i12;
import 'package:sdugram_auth/src/common/data/services/auth_service.dart' as _i7;
import 'package:sdugram_auth/src/common/data/services/login_service.dart'
    as _i8;
import 'package:sdugram_auth/src/common/data/sources/secure_storage_source.dart'
    as _i3;
import 'package:sdugram_auth/src/common/domain/behaviors/get_access_token_behavior.dart'
    as _i13;
import 'package:sdugram_auth/src/common/domain/behaviors/get_login_token_behavior.dart'
    as _i10;
import 'package:sdugram_auth/src/common/domain/use_cases/get_login_token_use_case.dart'
    as _i9;
import 'package:sdugram_auth/src/common/presentation/blocs/login_bloc/login_bloc.dart'
    as _i11;
import 'package:sdugram_core/config.dart' as _i6;

class SdugramAuthPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final authModule = _$AuthModule();
    gh.lazySingleton<_i3.SecureStorageSource>(() => _i3.SecureStorageSource());
    gh.factory<_i4.AuthSource>(() => authModule.authSource(
          gh<_i5.Dio>(instanceName: 'protected-dio'),
          gh<_i6.EnvironmentConfig>(),
        ));
    gh.lazySingleton<_i7.AuthService>(
        () => _i7.AuthService(gh<_i3.SecureStorageSource>()));
    gh.lazySingleton<_i8.LoginService>(() => _i8.LoginService(
          gh<_i4.AuthSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i4.GetLoginTokenBehavior>(
        () => authModule.getLogin(gh<_i4.LoginService>()));
    gh.factory<_i4.GetAccessTokenBehavior>(
        () => authModule.getAccessToken(gh<_i4.AuthService>()));
    gh.factory<_i9.GetLoginTokenUseCase>(
        () => _i9.GetLoginTokenUseCase(gh<_i10.GetLoginTokenBehavior>()));
    gh.factory<_i11.LoginBloc>(
        () => _i11.LoginBloc(gh<_i9.GetLoginTokenUseCase>()));
    gh.lazySingleton<_i5.Interceptor>(
      () => _i12.AuthInterceptor(gh<_i13.GetAccessTokenBehavior>()),
      instanceName: 'auth-interceptor',
    );
  }
}

class _$AuthModule extends _i14.AuthModule {}
