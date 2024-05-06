//@GeneratedMicroModule;SdugramHomePackageModule;package:sdugram_home/src/common/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;
import 'package:sdugram_core/config.dart' as _i5;
import 'package:sdugram_home/src/common/config/home_module.dart' as _i22;
import 'package:sdugram_home/src/common/data/services/home_service.dart' as _i6;
import 'package:sdugram_home/src/common/data/sources/home_source.dart' as _i3;
import 'package:sdugram_home/src/common/domain/behaviors/confirm_ticket_behavior.dart'
    as _i13;
import 'package:sdugram_home/src/common/domain/behaviors/create_card_behavior.dart'
    as _i10;
import 'package:sdugram_home/src/common/domain/behaviors/create_ticket_behavior.dart'
    as _i12;
import 'package:sdugram_home/src/common/domain/behaviors/delete_ticket_behavior.dart'
    as _i11;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_article_behavior.dart'
    as _i8;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_behavior.dart'
    as _i7;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_cards_behavior.dart'
    as _i9;
import 'package:sdugram_home/src/common/domain/use_cases/confirm_ticket_use_case.dart'
    as _i14;
import 'package:sdugram_home/src/common/domain/use_cases/create_card_use_case.dart'
    as _i16;
import 'package:sdugram_home/src/common/domain/use_cases/create_ticket_use_case.dart'
    as _i15;
import 'package:sdugram_home/src/common/domain/use_cases/delete_ticket_use_case.dart'
    as _i17;
import 'package:sdugram_home/src/common/domain/use_cases/fetch_article_use_case.dart'
    as _i19;
import 'package:sdugram_home/src/common/domain/use_cases/fetch_articles_use_case.dart'
    as _i20;
import 'package:sdugram_home/src/common/domain/use_cases/fetch_cards_use_case.dart'
    as _i18;
import 'package:sdugram_home/src/common/presentation/blocs/home_bloc.dart'
    as _i21;

class SdugramHomePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final homeModule = _$HomeModule();
    gh.factory<_i3.HomeSource>(() => homeModule.homeSource(
          gh<_i4.Dio>(instanceName: 'protected-dio'),
          gh<_i5.EnvironmentConfig>(),
        ));
    gh.lazySingleton<_i6.HomeService>(
        () => _i6.HomeService(homeSource: gh<_i3.HomeSource>()));
    gh.factory<_i7.FetchArticlesBehavior>(
        () => homeModule.fetchArticleBehavior(gh<_i6.HomeService>()));
    gh.factory<_i8.FetchArticleBehavior>(
        () => homeModule.fetchArticleDetailBehavior(gh<_i6.HomeService>()));
    gh.factory<_i9.FetchCardsBehavior>(
        () => homeModule.fetchCardsBehavior(gh<_i6.HomeService>()));
    gh.factory<_i10.CreateCardBehavior>(
        () => homeModule.createCardsBehavior(gh<_i6.HomeService>()));
    gh.factory<_i11.DeleteTicketBehavior>(
        () => homeModule.deleteTicketBehavior(gh<_i6.HomeService>()));
    gh.factory<_i12.CreateTicketBehavior>(
        () => homeModule.createTicketBehavior(gh<_i6.HomeService>()));
    gh.factory<_i13.ConfirmTicketBehavior>(
        () => homeModule.confirmTicketBehavior(gh<_i6.HomeService>()));
    gh.factory<_i14.ConfirmTicketUseCase>(
        () => _i14.ConfirmTicketUseCase(gh<_i13.ConfirmTicketBehavior>()));
    gh.factory<_i15.CreateTicketUseCase>(
        () => _i15.CreateTicketUseCase(gh<_i12.CreateTicketBehavior>()));
    gh.factory<_i16.CreateCardUseCase>(
        () => _i16.CreateCardUseCase(gh<_i10.CreateCardBehavior>()));
    gh.factory<_i17.DeleteTicketUseCase>(
        () => _i17.DeleteTicketUseCase(gh<_i11.DeleteTicketBehavior>()));
    gh.factory<_i18.FetchCardsUseCase>(
        () => _i18.FetchCardsUseCase(gh<_i9.FetchCardsBehavior>()));
    gh.factory<_i19.FetchArticleUseCase>(
        () => _i19.FetchArticleUseCase(gh<_i8.FetchArticleBehavior>()));
    gh.factory<_i20.FetchArticlesUseCase>(
        () => _i20.FetchArticlesUseCase(gh<_i7.FetchArticlesBehavior>()));
    gh.factory<_i21.HomeBloc>(() => _i21.HomeBloc(
          gh<_i20.FetchArticlesUseCase>(),
          gh<_i19.FetchArticleUseCase>(),
          gh<_i18.FetchCardsUseCase>(),
          gh<_i16.CreateCardUseCase>(),
          gh<_i15.CreateTicketUseCase>(),
          gh<_i17.DeleteTicketUseCase>(),
          gh<_i14.ConfirmTicketUseCase>(),
        ));
  }
}

class _$HomeModule extends _i22.HomeModule {}
