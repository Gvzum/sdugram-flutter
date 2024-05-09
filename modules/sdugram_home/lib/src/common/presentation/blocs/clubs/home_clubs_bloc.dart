import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/use_cases/fetch_clubs_use_case.dart';
import 'package:sdugram_home/src/common/presentation/blocs/clubs/home_clubs_event.dart';
import 'package:sdugram_home/src/common/presentation/blocs/clubs/home_clubs_state.dart';

@injectable
class HomeClubsBloc extends Bloc<HomeClubsEvent, HomeClubsState> {
  final FetchClubsUseCase _fetchArticlesUseCase;

  HomeClubsBloc(this._fetchArticlesUseCase)
      : super(const HomeClubsState()) {
    _setupHandlers();
    add(HomeClubsStarted());
  }

  void _setupHandlers() {
    on<HomeClubsStarted>(fetchClubs);
  }

  Future<void> fetchClubs(
    HomeClubsStarted event,
    Emitter<HomeClubsState> emit,
  ) async {
    emit(state.copyWith(clubsStatus: const HomeClubsLoading()));
    final result = await _fetchArticlesUseCase('ACTIVE');

    final listArticles = result.value;

    if (listArticles == null) {
      emit(state.copyWith(
          clubsStatus: HomeClubsFailure(result.failureOrDefault)));
      return;
    }

    emit(state.copyWith(clubsStatus: HomeClubsSuccess(listArticles)));
  }
}
