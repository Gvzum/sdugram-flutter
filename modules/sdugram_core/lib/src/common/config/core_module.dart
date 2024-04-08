import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/src/common/config/network/interceptors/logger_interceptor.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:talker_flutter/talker_flutter.dart';

@module
abstract class CoreModule {
  @Named('log-interceptor')
  @lazySingleton
  Interceptor logInterceptor(Talker talker) => LoggerInterceptor(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printResponseData: true,
          printRequestData: true,
          printResponseHeaders: true,
          printRequestHeaders: true,
          printResponseMessage: true,
        ),
      );

  @singleton
  Talker get talker {
    final talker = TalkerFlutter.init(
      logger: TalkerLogger(
        settings: TalkerLoggerSettings(
          colors: {
            LogLevel.debug: AnsiPen()..xterm(49),
          },
        ),
      ),
    );

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      ansiColorDisabled = true;
    }

    Bloc.observer = TalkerBlocObserver(
      talker: talker,
      settings: const TalkerBlocLoggerSettings(
        printEventFullData: false,
      ),
    );
    return talker;
  }
}
