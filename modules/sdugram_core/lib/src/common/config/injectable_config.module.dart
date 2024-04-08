//@GeneratedMicroModule;SdugramCorePackageModule;package:sdugram_core/src/common/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;
import 'package:sdugram_core/src/common/config/core_module.dart' as _i7;
import 'package:sdugram_core/src/common/config/logger/core_logger.dart' as _i6;
import 'package:sdugram_core/src/common/config/network/dio_module.dart' as _i8;
import 'package:sdugram_core/src/common/config/utils/environment_config.dart'
    as _i4;
import 'package:talker_flutter/talker_flutter.dart' as _i3;

class SdugramCorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final coreModule = _$CoreModule();
    final dioModule = _$DioModule();
    gh.singleton<_i3.Talker>(() => coreModule.talker);
    gh.lazySingleton<_i4.EnvironmentConfig>(() => _i4.EnvironmentConfig());
    gh.lazySingleton<_i5.Interceptor>(
      () => coreModule.logInterceptor(gh<_i3.Talker>()),
      instanceName: 'log-interceptor',
    );
    gh.factory<_i5.Dio>(
      () => dioModule.getSessionCodeAuthDio(
        gh<_i5.Interceptor>(instanceName: 'auth-interceptor'),
        gh<_i5.Interceptor>(instanceName: 'log-interceptor'),
      ),
      instanceName: 'session-code-auth-dio',
    );
    gh.singleton<_i6.CoreLogger>(() => _i6.CoreLogger(gh<_i3.Talker>()));
    gh.factory<_i5.Dio>(
      () => dioModule.getProtectedDio(
        gh<_i5.Interceptor>(instanceName: 'auth-interceptor'),
        gh<_i5.Interceptor>(instanceName: 'log-interceptor'),
      ),
      instanceName: 'protected-dio',
    );
  }
}

class _$CoreModule extends _i7.CoreModule {}

class _$DioModule extends _i8.DioModule {}
