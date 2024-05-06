import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_home/src/common/data/sources/home_source.dart';
import 'package:sdugram_home/src/common/domain/behaviors/confirm_ticket_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/create_card_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/create_ticket_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/delete_ticket_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_article_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_cards_behavior.dart';

import '../data/services/home_service.dart';

@module
abstract class HomeModule {
  @factoryMethod
  HomeSource homeSource(
      @Named('protected-dio') Dio dio,
      EnvironmentConfig repositoryConfig,
      ) =>
      HomeSource(
        dio,
        baseUrl: '${repositoryConfig.baseUrl}/api',
      );

  @factoryMethod
  FetchArticlesBehavior fetchArticleBehavior(
      HomeService homeService,
      ) =>
      homeService;

  @factoryMethod
  FetchArticleBehavior fetchArticleDetailBehavior(
      HomeService homeService,
      ) =>
      homeService;

  @factoryMethod
  FetchCardsBehavior fetchCardsBehavior(
      HomeService homeService,
      ) =>
      homeService;

  @factoryMethod
  CreateCardBehavior createCardsBehavior(
      HomeService homeService,
      ) =>
      homeService;

  @factoryMethod
  DeleteTicketBehavior deleteTicketBehavior(
      HomeService homeService,
      ) =>
      homeService;

  @factoryMethod
  CreateTicketBehavior createTicketBehavior(
      HomeService homeService,
      ) =>
      homeService;

  @factoryMethod
  ConfirmTicketBehavior confirmTicketBehavior(
      HomeService homeService,
      ) =>
      homeService;
}