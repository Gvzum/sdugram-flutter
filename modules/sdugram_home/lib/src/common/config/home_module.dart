import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_home/src/common/data/sources/home_source.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_behavior.dart';

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


}