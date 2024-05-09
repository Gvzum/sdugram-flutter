//@GeneratedMicroModule;SdugramHomePackageModule;package:sdugram_home/src/common/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;
import 'package:sdugram_core/config.dart' as _i5;
import 'package:sdugram_home/src/common/config/home_module.dart' as _i29;
import 'package:sdugram_home/src/common/data/services/home_service.dart' as _i6;
import 'package:sdugram_home/src/common/data/sources/home_source.dart' as _i3;
import 'package:sdugram_home/src/common/domain/behaviors/confirm_ticket_behavior.dart'
    as _i14;
import 'package:sdugram_home/src/common/domain/behaviors/create_card_behavior.dart'
    as _i11;
import 'package:sdugram_home/src/common/domain/behaviors/create_ticket_behavior.dart'
    as _i13;
import 'package:sdugram_home/src/common/domain/behaviors/delete_ticket_behavior.dart'
    as _i12;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_article_behavior.dart'
    as _i9;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_behavior.dart'
    as _i7;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_by_author_behavior.dart'
    as _i16;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_cards_behavior.dart'
    as _i10;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_club_detail_behavior.dart'
    as _i15;
import 'package:sdugram_home/src/common/domain/behaviors/fetch_clubs_behavior.dart'
    as _i8;
import 'package:sdugram_home/src/common/domain/use_cases/confirm_ticket_use_case.dart'
    as _i17;
import 'package:sdugram_home/src/common/domain/use_cases/create_card_use_case.dart'
    as _i20;
import 'package:sdugram_home/src/common/domain/use_cases/create_ticket_use_case.dart'
    as _i19;
import 'package:sdugram_home/src/common/domain/use_cases/delete_ticket_use_case.dart'
    as _i22;
import 'package:sdugram_home/src/common/domain/use_cases/fetch_article_use_case.dart'
    as _i24;
import 'package:sdugram_home/src/common/domain/use_cases/fetch_articles_use_case.dart'
    as _i25;
import 'package:sdugram_home/src/common/domain/use_cases/fetch_cards_use_case.dart'
    as _i23;
import 'package:sdugram_home/src/common/domain/use_cases/fetch_club_detail_use_case.dart'
    as _i26;
import 'package:sdugram_home/src/common/domain/use_cases/fetch_clubs_use_case.dart'
    as _i18;
import 'package:sdugram_home/src/common/presentation/blocs/clubs/home_clubs_bloc.dart'
    as _i21;
import 'package:sdugram_home/src/common/presentation/blocs/detail/home_club_detail_bloc.dart'
    as _i28;
import 'package:sdugram_home/src/common/presentation/blocs/home_bloc.dart'
    as _i27;

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
    gh.factory<_i8.FetchClubsBehavior>(
        () => homeModule.fetchClubs(gh<_i6.HomeService>()));
    gh.factory<_i9.FetchArticleBehavior>(
        () => homeModule.fetchArticleDetailBehavior(gh<_i6.HomeService>()));
    gh.factory<_i10.FetchCardsBehavior>(
        () => homeModule.fetchCardsBehavior(gh<_i6.HomeService>()));
    gh.factory<_i11.CreateCardBehavior>(
        () => homeModule.createCardsBehavior(gh<_i6.HomeService>()));
    gh.factory<_i12.DeleteTicketBehavior>(
        () => homeModule.deleteTicketBehavior(gh<_i6.HomeService>()));
    gh.factory<_i13.CreateTicketBehavior>(
        () => homeModule.createTicketBehavior(gh<_i6.HomeService>()));
    gh.factory<_i14.ConfirmTicketBehavior>(
        () => homeModule.confirmTicketBehavior(gh<_i6.HomeService>()));
    gh.factory<_i15.FetchClubDetailBehavior>(
        () => homeModule.clubDetailBehavior(gh<_i6.HomeService>()));
    gh.factory<_i16.FetchArticlesByAuthorBehavior>(
        () => homeModule.articlesByAuthor(gh<_i6.HomeService>()));
    gh.factory<_i17.ConfirmTicketUseCase>(
        () => _i17.ConfirmTicketUseCase(gh<_i14.ConfirmTicketBehavior>()));
    gh.factory<_i18.FetchClubsUseCase>(
        () => _i18.FetchClubsUseCase(gh<_i8.FetchClubsBehavior>()));
    gh.factory<_i19.CreateTicketUseCase>(
        () => _i19.CreateTicketUseCase(gh<_i13.CreateTicketBehavior>()));
    gh.factory<_i20.CreateCardUseCase>(
        () => _i20.CreateCardUseCase(gh<_i11.CreateCardBehavior>()));
    gh.factory<_i21.HomeClubsBloc>(
        () => _i21.HomeClubsBloc(gh<_i18.FetchClubsUseCase>()));
    gh.factory<_i22.DeleteTicketUseCase>(
        () => _i22.DeleteTicketUseCase(gh<_i12.DeleteTicketBehavior>()));
    gh.factory<_i23.FetchCardsUseCase>(
        () => _i23.FetchCardsUseCase(gh<_i10.FetchCardsBehavior>()));
    gh.factory<_i24.FetchArticleUseCase>(
        () => _i24.FetchArticleUseCase(gh<_i9.FetchArticleBehavior>()));
    gh.factory<_i25.FetchArticlesUseCase>(
        () => _i25.FetchArticlesUseCase(gh<_i7.FetchArticlesBehavior>()));
    gh.factory<_i26.FetchClubDetailUseCase>(() => _i26.FetchClubDetailUseCase(
          gh<_i16.FetchArticlesByAuthorBehavior>(),
          gh<_i15.FetchClubDetailBehavior>(),
        ));
    gh.factory<_i27.HomeBloc>(() => _i27.HomeBloc(
          gh<_i25.FetchArticlesUseCase>(),
          gh<_i24.FetchArticleUseCase>(),
          gh<_i23.FetchCardsUseCase>(),
          gh<_i20.CreateCardUseCase>(),
          gh<_i19.CreateTicketUseCase>(),
          gh<_i22.DeleteTicketUseCase>(),
          gh<_i17.ConfirmTicketUseCase>(),
        ));
    gh.factoryParam<_i28.HomeClubDetailBloc, int, dynamic>((
      id,
      _,
    ) =>
        _i28.HomeClubDetailBloc(
          id,
          gh<_i26.FetchClubDetailUseCase>(),
        ));
  }
}

class _$HomeModule extends _i29.HomeModule {}
