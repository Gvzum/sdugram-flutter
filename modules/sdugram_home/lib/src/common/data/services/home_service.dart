import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/data/dtos/add_card_request.dart';
import 'package:sdugram_home/src/common/data/dtos/confirm_ticket_request.dart';
import 'package:sdugram_home/src/common/data/dtos/create_ticket_request.dart';
import 'package:sdugram_home/src/common/data/mappers/article_detail_dto_mapper_x.dart';
import 'package:sdugram_home/src/common/data/mappers/list_article_response_dto_mapper_x.dart';
import 'package:sdugram_home/src/common/data/mappers/list_credit_card_response_dto_mapper_x.dart';
import 'package:sdugram_home/src/common/data/sources/home_source.dart';
import 'package:sdugram_home/src/common/domain/behaviors/confirm_ticket_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/create_card_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/create_ticket_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/delete_ticket_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_article_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_by_author_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_cards_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_club_detail_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_clubs_behavior.dart';
import 'package:sdugram_home/src/common/domain/models/article_detail_model.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_home/src/common/domain/models/club_model.dart';
import 'package:sdugram_home/src/common/domain/models/create_ticket.dart';
import 'package:sdugram_home/src/common/domain/models/credit_card_model.dart';

@lazySingleton
class HomeService
    implements
        FetchArticlesBehavior,
        FetchArticleBehavior,
        FetchCardsBehavior,
        CreateCardBehavior,
        CreateTicketBehavior,
        DeleteTicketBehavior,
        ConfirmTicketBehavior,
        FetchClubsBehavior,
        FetchClubDetailBehavior,
        FetchArticlesByAuthorBehavior {
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

  @override
  Future<Result<ArticleDetailModel>> fetchDetail({required int id}) async {
    try {
      final result = await _homeSource.getArticle(id: id);
      return SuccessResult(result.toModel());
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<ListCreditCardModel>> fetchCards() async {
    try {
      final result = await _homeSource.getCards();
      return SuccessResult(result.toModel());
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<void>> createCards({required AddCardRequest request}) async {
    try {
      final result = await _homeSource.createCard(request: request);
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<CreateTicket>> createTicket({
    required int event,
  }) async {
    try {
      final result = await _homeSource.createTicket(
          request: CreateTicketRequest(event: event));
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<void>> deleteTicket({required String ticketId}) async {
    try {
      final result = await _homeSource.deleteTicket(ticketId: ticketId);
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<String>> confirmTicket({
    int? cardId,
    required String ticketId,
  }) async {
    try {
      final result = await _homeSource.confirmTicket(
          request: ConfirmTicketRequest(
        ticketId: ticketId,
        cardId: cardId,
      ));
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<List<ClubModel>>> fetchClubs() async {
    try {
      final result = await _homeSource.getClubs();
      return SuccessResult(result.results);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<ClubModel>> fetchClubDetail({required String clubId}) async {
    try {
      final result = await _homeSource.getClubDetail(clubId: clubId);
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<ListArticleModel>> fetchArticleByAuthor(
      {required String authorId}) async {
    try {
      final result =
          await _homeSource.getActiveArticlesByAuthor(author: authorId);
      return SuccessResult(result.toModel());
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }
}
