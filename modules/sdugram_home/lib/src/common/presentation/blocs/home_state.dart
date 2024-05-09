import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/article_detail_model.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';
import 'package:sdugram_home/src/common/domain/models/credit_card_model.dart';


part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeEventInitial()) HomeEventState eventState,
    @Default(HomeEventDetailInitial()) HomeEventDetailState detailEventState,
    @Default('x') String ticketId,
    @Default(0) int eventId,
    @Default(null) int? cardId,
    @Default('Free') String paymentMethod,
    @Default('0') String amount,
  }) = _HomeState;
}

@freezed
sealed class HomeEventState with _$HomeEventState {
  const factory HomeEventState.initial() =
  HomeEventInitial;

  const factory HomeEventState.loading() =
  HomeEventLoading;

  const factory HomeEventState.failure(Failure failure) =
  HomeEventFailure;

  const factory HomeEventState.success(ListArticleModel listArticles) =
  HomeEventSuccess;
}

@freezed
sealed class HomeEventDetailState with _$HomeEventDetailState {
  const factory HomeEventDetailState.initial() =
  HomeEventDetailInitial;

  const factory HomeEventDetailState.loading() =
  HomeEventDetailLoading;

  const factory HomeEventDetailState.failure(Failure failure) =
  HomeEventDetailFailure;

  const factory HomeEventDetailState.success(ArticleDetailModel article) =
  HomeEventDetailSuccess;

  const factory HomeEventDetailState.cards(ListCreditCardModel cards) =
  HomeEventDetailCards;

  const factory HomeEventDetailState.addSuccess() =
  HomeEventDetailAddCardSuccess;

  const factory HomeEventDetailState.addTicketSuccess() =
  HomeEventDetailAddTicketSuccess;

  const factory HomeEventDetailState.confirmTicket() =
  HomeEventDetailConfirmTicketSuccess;

  const factory HomeEventDetailState.deleteTicket() =
  HomeEventDetailDeleteTicketSuccess;
}