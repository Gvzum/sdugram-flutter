import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:sdugram_home/src/common/data/dtos/add_card_request.dart';
import 'package:sdugram_home/src/common/data/dtos/article_detail_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/confirm_ticket_request.dart';
import 'package:sdugram_home/src/common/data/dtos/create_ticket_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/create_ticket_request.dart';
import 'package:sdugram_home/src/common/data/dtos/list_article_response_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/list_credit_card_response_dto.dart';
import 'package:sdugram_core/data.dart';
import 'package:sdugram_home/src/common/domain/models/save_article_model.dart';

import '../dtos/save_article_request.dart';

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

  @POST('/integration/user/credit-card/')
  Future<void> createCard({
    @Body() required AddCardRequest request,
  });

  @POST('/integration/blog/ticket/')
  Future<CreateTicketDto> createTicket({
    @Body() required CreateTicketRequest request,
  });

  @DELETE('/integration/blog/ticket/{ticketId}')
  Future<void> deleteTicket({
    @Path() required String ticketId,
  });

  @POST('/integration/blog/confirm-ticket/')
  Future<String> confirmTicket({
    @Body() required ConfirmTicketRequest request,
  });

  @GET('/integration/user/user-profile/?profile_type_in=club')
  Future<BaseListResponseDto<UserProfileResponseDto>> getClubs();

  @GET('/integration/user/user-profile/{clubId}')
  Future<UserProfileResponseDto> getClubDetail({
    @Path() required String clubId,
  });

  @GET('/integration/blog/articles/?status=ACTIVE&author={author}')
  Future<ListArticleResponseDto> getActiveArticlesByAuthor({
    @Query('author') required String author,
  });

  @POST('/integration/blog/saved-article/')
  Future<void> saveArticle({
    @Body() required SaveArticleRequest request,
  });

  @POST('/integration/blog/undo-saved-article/')
  Future<void> undoSaveArticle({
    @Body() required SaveArticleRequest request,
  });
}
