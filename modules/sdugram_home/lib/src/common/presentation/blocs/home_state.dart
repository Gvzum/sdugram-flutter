import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/article_detail_model.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';
import 'package:sdugram_home/src/common/domain/models/credit_card_model.dart';

// sealed class HomeState {}
//
// class HomeInitial extends HomeState {}
//
// class HomeLoading extends HomeState {}
//
// class HomeFailure extends HomeState {
//   final Failure failure;
//
//   HomeFailure({required this.failure});
// }
//
// class HomeSuccess extends HomeState {
//   final ListArticleModel listArticles;
//
//   HomeSuccess({required this.listArticles});
// }
//
// class HomeDetailsLoading extends HomeState {}
//
// class HomeDetailsFailure extends HomeState {
//   final Failure failure;
//
//   HomeDetailsFailure({required this.failure});
// }
//
// class HomeDetailsSuccess extends HomeState {
//   final ArticleDetailModel article;
//
//   HomeDetailsSuccess({required this.article});
// }


part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeEventInitial()) HomeEventState eventState,
    @Default(HomeEventDetailInitial()) HomeEventDetailState detailEventState,
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
}