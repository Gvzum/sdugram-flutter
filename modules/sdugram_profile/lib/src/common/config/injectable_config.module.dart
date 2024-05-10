//@GeneratedMicroModule;SdugramProfilePackageModule;package:sdugram_profile/src/common/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i6;
import 'package:injectable/injectable.dart' as _i1;
import 'package:sdugram_core/config.dart' as _i7;
import 'package:sdugram_core/domain.dart' as _i4;
import 'package:sdugram_profile/src/common/config/profile_module.dart' as _i9;
import 'package:sdugram_profile/src/common/data/services/profile_service.dart'
    as _i8;
import 'package:sdugram_profile/src/common/data/sources/profile_source.dart'
    as _i5;
import 'package:sdugram_profile/src/common/presentation/blocs/profile_bloc.dart'
    as _i3;

class SdugramProfilePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final profileModule = _$ProfileModule();
    gh.factory<_i3.ProfileBloc>(
        () => _i3.ProfileBloc(gh<_i4.FetchUserDataUseCase>()));
    gh.factory<_i5.ProfileSource>(() => profileModule.homeSource(
          gh<_i6.Dio>(instanceName: 'protected-dio'),
          gh<_i7.EnvironmentConfig>(),
        ));
    gh.lazySingleton<_i8.ProfileService>(
        () => _i8.ProfileService(profileSource: gh<_i5.ProfileSource>()));
  }
}

class _$ProfileModule extends _i9.ProfileModule {}
