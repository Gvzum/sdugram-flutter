// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sdugram_auth/src/common/config/injectable_config.module.dart'
    as _i4;
import 'package:sdugram_core/src/common/config/injectable_config.module.dart'
    as _i3;
import 'package:sdugram_home/src/common/config/injectable_config.module.dart'
    as _i7;
import 'package:sdugram_mentoring/src/common/config/injectable_config.module.dart'
    as _i9;
import 'package:sdugram_post/src/common/config/injectable_config.module.dart'
    as _i5;
import 'package:sdugram_profile/src/common/config/injectable_config.module.dart'
    as _i6;
import 'package:sdugram_tickets/src/common/config/injectable_config.module.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.SdugramCorePackageModule().init(gh);
    await _i4.SdugramAuthPackageModule().init(gh);
    await _i5.SdugramPostPackageModule().init(gh);
    await _i6.SdugramProfilePackageModule().init(gh);
    await _i7.SdugramHomePackageModule().init(gh);
    await _i8.SdugramTicketsPackageModule().init(gh);
    await _i9.SdugramMentoringPackageModule().init(gh);
    return this;
  }
}
