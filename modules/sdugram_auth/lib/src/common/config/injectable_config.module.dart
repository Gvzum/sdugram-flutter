//@GeneratedMicroModule;SdugramAuthPackageModule;package:sdugram_auth/src/common/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;
import 'package:sdugram_auth/sdugram_auth.dart' as _i4;
import 'package:sdugram_auth/src/common/config/auth_module.dart' as _i21;
import 'package:sdugram_auth/src/common/config/network/auth_interceptor.dart'
    as _i18;
import 'package:sdugram_auth/src/common/data/services/auth_service.dart' as _i7;
import 'package:sdugram_auth/src/common/data/services/login_service.dart'
    as _i9;
import 'package:sdugram_auth/src/common/data/services/register_service.dart'
    as _i11;
import 'package:sdugram_auth/src/common/data/sources/auth_source.dart' as _i10;
import 'package:sdugram_auth/src/common/data/sources/register_source.dart'
    as _i8;
import 'package:sdugram_auth/src/common/data/sources/secure_storage_source.dart'
    as _i3;
import 'package:sdugram_auth/src/common/domain/behaviors/get_access_token_behavior.dart'
    as _i19;
import 'package:sdugram_auth/src/common/domain/behaviors/get_login_token_behavior.dart'
    as _i17;
import 'package:sdugram_auth/src/common/domain/behaviors/register_user_behavior.dart'
    as _i14;
import 'package:sdugram_auth/src/common/domain/use_cases/get_login_token_use_case.dart'
    as _i16;
import 'package:sdugram_auth/src/common/domain/use_cases/register_user_use_case.dart'
    as _i13;
import 'package:sdugram_auth/src/common/presentation/blocs/login_bloc/login_bloc.dart'
    as _i20;
import 'package:sdugram_auth/src/common/presentation/blocs/register_bloc/register_bloc.dart'
    as _i15;
import 'package:sdugram_core/config.dart' as _i6;
import 'package:sdugram_core/domain.dart' as _i12;

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
    gh.factory<_i8.RegisterSource>(() => authModule.registerSource(
          gh<_i5.Dio>(instanceName: 'no-auth-dio'),
          gh<_i6.EnvironmentConfig>(),
        ));
    gh.lazySingleton<_i9.LoginService>(() => _i9.LoginService(
          gh<_i10.AuthSource>(),
          gh<_i7.AuthService>(),
        ));
    gh.lazySingleton<_i11.RegisterService>(() => _i11.RegisterService(
          gh<_i8.RegisterSource>(),
          gh<_i7.AuthService>(),
        ));
    gh.factory<_i4.RegisterUserBehavior>(
        () => authModule.register(gh<_i4.RegisterService>()));
    gh.factory<_i4.GetLoginTokenBehavior>(
        () => authModule.getLogin(gh<_i4.LoginService>()));
    gh.factory<_i12.FetchUserDataBehavior>(
        () => authModule.getUserData(gh<_i4.LoginService>()));
    gh.factory<_i13.RegisterUserUseCase>(
        () => _i13.RegisterUserUseCase(gh<_i14.RegisterUserBehavior>()));
    gh.factory<_i4.GetAccessTokenBehavior>(
        () => authModule.getAccessToken(gh<_i4.AuthService>()));
    gh.factory<_i15.RegisterBloc>(
        () => _i15.RegisterBloc(gh<_i13.RegisterUserUseCase>()));
    gh.factory<_i16.GetLoginTokenUseCase>(
        () => _i16.GetLoginTokenUseCase(gh<_i17.GetLoginTokenBehavior>()));
    gh.lazySingleton<_i5.Interceptor>(
      () => _i18.AuthInterceptor(gh<_i19.GetAccessTokenBehavior>()),
      instanceName: 'auth-interceptor',
    );
    gh.factory<_i20.LoginBloc>(() => _i20.LoginBloc(
          gh<_i16.GetLoginTokenUseCase>(),
          gh<_i12.FetchUserDataUseCase>(),
        ));
  }
}

class _$AuthModule extends _i21.AuthModule {}
