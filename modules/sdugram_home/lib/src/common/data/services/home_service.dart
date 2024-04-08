import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/src/common/domain/models/result.dart';
import 'package:sdugram_home/src/common/data/mappers/list_article_response_dto_mapper_x.dart';
import 'package:sdugram_home/src/common/data/sources/home_source.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_behavior.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';
import 'package:sdugram_core/config.dart';

@lazySingleton
class HomeService implements FetchArticlesBehavior {
  final HomeSource _homeSource;

  HomeService({required HomeSource homeSource}) : _homeSource = homeSource;

  @override
  Future<Result<ListArticleModel>> fetchDetails() async {
    try {
      final result =
          await _homeSource.getArticles().then((value) => value.toModel());
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }
}
