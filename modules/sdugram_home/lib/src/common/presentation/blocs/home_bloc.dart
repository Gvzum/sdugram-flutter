import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/data/dtos/add_card_request.dart';
import 'package:sdugram_home/src/common/domain/use_cases/create_card_use_case.dart';
import 'package:sdugram_home/src/common/domain/use_cases/fetch_article_use_case.dart';
import 'package:sdugram_home/src/common/domain/use_cases/fetch_articles_use_case.dart';
import 'package:sdugram_home/src/common/domain/use_cases/fetch_cards_use_case.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_event.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchArticlesUseCase _fetchArticlesUseCase;
  final FetchArticleUseCase _fetchArticleUseCase;
  final FetchCardsUseCase _fetchCardsUseCase;
  final CreateCardUseCase _createCardUseCase;

  HomeBloc(this._fetchArticlesUseCase, this._fetchArticleUseCase,
      this._fetchCardsUseCase, this._createCardUseCase)
      : super(const HomeState()) {
    _setupHandlers();
    add(HomeStarted());
  }

  void _setupHandlers() {
    on<HomeStarted>(fetchArticles);
    on<HomeEventPressed>(fetchArticle);
    on<HomeBuyPressed>(fetchPaymentCards);
    on<HomeAddCardPressed>(createCard);
  }

  Future<void> fetchArticles(
    HomeStarted event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(eventState: const HomeEventLoading()));
    // await Future.delayed(const Duration(seconds: 3));
    final result = await _fetchArticlesUseCase(null);

    final listArticles = result.value;

    if (listArticles == null) {
      emit(state.copyWith(
          eventState: HomeEventFailure(result.failureOrDefault)));
      return;
    }

    emit(state.copyWith(eventState: HomeEventSuccess(listArticles)));
  }

  FutureOr<void> fetchArticle(
    HomeEventPressed event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(detailEventState: const HomeEventDetailLoading()));
    // await Future.delayed(const Duration(seconds: 3));
    final result = await _fetchArticleUseCase(event.id);

    final listArticles = result.value;

    if (listArticles == null) {
      emit(state.copyWith(
          detailEventState: HomeEventDetailFailure(result.failureOrDefault)));
      return;
    }

    emit(
        state.copyWith(detailEventState: HomeEventDetailSuccess(listArticles)));
  }

  FutureOr<void> fetchPaymentCards(
    HomeBuyPressed event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(detailEventState: const HomeEventDetailLoading()));
    final result = await _fetchCardsUseCase(null);

    final listCards = result.value;

    if (listCards == null) {
      emit(state.copyWith(
          detailEventState: HomeEventDetailFailure(result.failureOrDefault)));
      return;
    }

    emit(state.copyWith(detailEventState: HomeEventDetailCards(listCards)));
  }

  FutureOr<void> createCard(
    HomeAddCardPressed event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(detailEventState: HomeEventDetailLoading()));
    final result = await _createCardUseCase(AddCardRequest(
        cardNumber: event.cardNumber,
        cardholderName: event.cardholderName,
        expirationMonth: event.expirationMonth,
        expirationYear: event.expirationYear));

    if (result.failure != null) {
      emit(state.copyWith(
          detailEventState: HomeEventDetailFailure(result.failureOrDefault)));
    }
    emit(state.copyWith(
        detailEventState: const HomeEventDetailAddCardSuccess()));
  }
}
