import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/config/injectable_config.module.dart';
import 'package:sdugram_core/src/common/config/injectable_config.module.dart';
import 'package:sdugram_flutter/config/injector/injector.config.dart';

@InjectableInit(
  externalPackageModulesBefore: [
    ExternalModule(SdugramCorePackageModule),
    ExternalModule(SdugramAuthPackageModule),
  ],
)
FutureOr<dynamic> configureDependencies({String? environment}) {
  return GetIt.instance.init(environment: environment);
}
