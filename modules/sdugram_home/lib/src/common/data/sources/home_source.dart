import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sdugram_home/src/common/data/dtos/list_article_response_dto.dart';

part 'home_source.g.dart';

@RestApi()
abstract class HomeSource {
  factory HomeSource(
      Dio dio, {
        String baseUrl,
      }) = _HomeSource;

  @GET('/integration/blog/articles/')
  Future<ListArticleResponseDto> getArticles();
}
