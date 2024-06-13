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
    as _i23;
import 'package:sdugram_mentoring/src/common/data/services/mentoring_service.dart'
    as _i6;
import 'package:sdugram_mentoring/src/common/data/sources/mentoring_source.dart'
    as _i3;
import 'package:sdugram_mentoring/src/common/domain/behaviors/apply_mentees_behavior.dart'
    as _i10;
import 'package:sdugram_mentoring/src/common/domain/behaviors/create_request_to_mentor_behavior.dart'
    as _i9;
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_chat_detail_behavior.dart'
    as _i12;
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_chat_list_behavior.dart'
    as _i11;
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentees_behavior.dart'
    as _i8;
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentors_behavior.dart'
    as _i7;
import 'package:sdugram_mentoring/src/common/domain/use_cases/apply_mentees_use_case.dart'
    as _i21;
import 'package:sdugram_mentoring/src/common/domain/use_cases/create_request_to_mentor_use_case.dart'
    as _i15;
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_chat_detail_use_case.dart'
    as _i14;
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_chat_list_use_case.dart'
    as _i17;
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_mentees_use_case.dart'
    as _i13;
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_mentors_use_case.dart'
    as _i16;
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_bloc.dart'
    as _i19;
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_detail/chat_detail_bloc.dart'
    as _i20;
import 'package:sdugram_mentoring/src/common/presentation/blocs/mentoring_bloc.dart'
    as _i18;
import 'package:sdugram_mentoring/src/common/presentation/blocs/request/mentoring_request_bloc.dart'
    as _i22;

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
    gh.factory<_i11.FetchChatListBehavior>(
        () => mentoringModule.fetchChatList(gh<_i6.MentoringService>()));
    gh.factory<_i12.FetchChatDetailBehavior>(
        () => mentoringModule.fetchChatDetail(gh<_i6.MentoringService>()));
    gh.factory<_i13.FetchMenteesUseCase>(
        () => _i13.FetchMenteesUseCase(gh<_i8.FetchMenteesBehavior>()));
    gh.factory<_i14.FetchChatDetailUseCase>(
        () => _i14.FetchChatDetailUseCase(gh<_i12.FetchChatDetailBehavior>()));
    gh.factory<_i15.CreateRequestToMentorUseCase>(() =>
        _i15.CreateRequestToMentorUseCase(
            gh<_i9.CreateRequestToMentorBehavior>()));
    gh.factory<_i16.FetchMentorsUseCase>(
        () => _i16.FetchMentorsUseCase(gh<_i7.FetchMentorsBehavior>()));
    gh.factory<_i17.FetchChatListUseCase>(
        () => _i17.FetchChatListUseCase(gh<_i11.FetchChatListBehavior>()));
    gh.factory<_i18.MentoringBloc>(() => _i18.MentoringBloc(
          gh<_i16.FetchMentorsUseCase>(),
          gh<_i15.CreateRequestToMentorUseCase>(),
        ));
    gh.factory<_i19.ChatBloc>(
        () => _i19.ChatBloc(gh<_i17.FetchChatListUseCase>()));
    gh.factoryParam<_i20.ChatDetailBloc, int, dynamic>((
      id,
      _,
    ) =>
        _i20.ChatDetailBloc(
          id,
          gh<_i14.FetchChatDetailUseCase>(),
        ));
    gh.factory<_i21.ApplyMenteesUseCase>(
        () => _i21.ApplyMenteesUseCase(gh<_i10.ApplyMenteesBehavior>()));
    gh.factory<_i22.MentoringRequestBloc>(() => _i22.MentoringRequestBloc(
          gh<_i13.FetchMenteesUseCase>(),
          gh<_i10.ApplyMenteesBehavior>(),
        ));
  }
}

class _$MentoringModule extends _i23.MentoringModule {}
