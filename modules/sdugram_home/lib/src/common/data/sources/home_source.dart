import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sdugram_home/src/common/data/dtos/add_card_request.dart';
import 'package:sdugram_home/src/common/data/dtos/article_detail_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/list_article_response_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/list_credit_card_response_dto.dart';

part 'home_source.g.dart';

@RestApi()
abstract class HomeSource {
  factory HomeSource(
    Dio dio, {
    String baseUrl,
  }) = _HomeSource;

  @GET('/integration/blog/articles/')
  Future<ListArticleResponseDto> getArticles();

  @GET('/integration/blog/articles/{id}')
  Future<ArticleDetailDto> getArticle({
    @Path() required int id,
  });

  @GET('/integration/user/credit-card?page=1')
  Future<ListCreditCardResponseDto> getCards();

  @POST('/integration/user/credit-card')
  Future<void> createCard({
    @Body() required AddCardRequest request,
  });
}
