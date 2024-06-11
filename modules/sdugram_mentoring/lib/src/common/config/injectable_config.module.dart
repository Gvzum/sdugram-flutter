//@GeneratedMicroModule;SdugramMentoringPackageModule;package:sdugram_mentoring/src/common/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;
import 'package:sdugram_core/config.dart' as _i5;
import 'package:sdugram_mentoring/src/common/config/mentoring_module.dart'
    as _i17;
import 'package:sdugram_mentoring/src/common/data/services/mentoring_service.dart'
    as _i6;
import 'package:sdugram_mentoring/src/common/data/sources/mentoring_source.dart'
    as _i3;
import 'package:sdugram_mentoring/src/common/domain/behaviors/apply_mentees_behavior.dart'
    as _i10;
import 'package:sdugram_mentoring/src/common/domain/behaviors/create_request_to_mentor_behavior.dart'
    as _i9;
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentees_behavior.dart'
    as _i8;
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentors_behavior.dart'
    as _i7;
import 'package:sdugram_mentoring/src/common/domain/use_cases/apply_mentees_use_case.dart'
    as _i11;
import 'package:sdugram_mentoring/src/common/domain/use_cases/create_request_to_mentor_use_case.dart'
    as _i13;
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_mentees_use_case.dart'
    as _i12;
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_mentors_use_case.dart'
    as _i14;
import 'package:sdugram_mentoring/src/common/presentation/blocs/mentoring_bloc.dart'
    as _i15;
import 'package:sdugram_mentoring/src/common/presentation/blocs/request/mentoring_request_bloc.dart'
    as _i16;

class SdugramMentoringPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final mentoringModule = _$MentoringModule();
    gh.factory<_i3.MentoringSource>(() => mentoringModule.homeSource(
          gh<_i4.Dio>(instanceName: 'protected-dio'),
          gh<_i5.EnvironmentConfig>(),
        ));
    gh.lazySingleton<_i6.MentoringService>(
        () => _i6.MentoringService(mentoringSource: gh<_i3.MentoringSource>()));
    gh.factory<_i7.FetchMentorsBehavior>(
        () => mentoringModule.fetchArticleBehavior(gh<_i6.MentoringService>()));
    gh.factory<_i8.FetchMenteesBehavior>(
        () => mentoringModule.fetchMentees(gh<_i6.MentoringService>()));
    gh.factory<_i9.CreateRequestToMentorBehavior>(
        () => mentoringModule.createRequest(gh<_i6.MentoringService>()));
    gh.factory<_i10.ApplyMenteesBehavior>(
        () => mentoringModule.apply(gh<_i6.MentoringService>()));
    gh.factory<_i11.ApplyMenteesUseCase>(
        () => _i11.ApplyMenteesUseCase(gh<_i10.ApplyMenteesBehavior>()));
    gh.factory<_i12.FetchMenteesUseCase>(
        () => _i12.FetchMenteesUseCase(gh<_i8.FetchMenteesBehavior>()));
    gh.factory<_i13.CreateRequestToMentorUseCase>(() =>
        _i13.CreateRequestToMentorUseCase(
            gh<_i9.CreateRequestToMentorBehavior>()));
    gh.factory<_i14.FetchMentorsUseCase>(
        () => _i14.FetchMentorsUseCase(gh<_i7.FetchMentorsBehavior>()));
    gh.factory<_i15.MentoringBloc>(() => _i15.MentoringBloc(
          gh<_i14.FetchMentorsUseCase>(),
          gh<_i13.CreateRequestToMentorUseCase>(),
        ));
    gh.factory<_i16.MentoringRequestBloc>(() => _i16.MentoringRequestBloc(
          gh<_i12.FetchMenteesUseCase>(),
          gh<_i10.ApplyMenteesBehavior>(),
        ));
  }
}

class _$MentoringModule extends _i17.MentoringModule {}
