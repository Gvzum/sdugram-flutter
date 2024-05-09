import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/use_cases/fetch_club_detail_use_case.dart';
import 'package:sdugram_home/src/common/presentation/blocs/detail/home_club_detail_event.dart';
import 'package:sdugram_home/src/common/presentation/blocs/detail/home_club_detail_state.dart';

@injectable
class HomeClubDetailBloc
    extends Bloc<HomeClubDetailEvent, HomeClubDetailState> {
  final FetchClubDetailUseCase _clubDetailUseCase;

  HomeClubDetailBloc(@factoryParam int id, this._clubDetailUseCase)
      : super(HomeClubDetailState(id: id)) {
    _setupHandlers();
    add(HomeClubDetailStarted());
  }

  void _setupHandlers() {
    on<HomeClubDetailStarted>(fetchClubDetail);
  }

  Future<void> fetchClubDetail(
    HomeClubDetailStarted event,
    Emitter<HomeClubDetailState> emit,
  ) async {
    emit(state.copyWith(clubDetail: const HomeClubDetailLoading()));
    final result = await _clubDetailUseCase('${state.id}');

    final listArticles = result.value;

    if (listArticles == null) {
      emit(state.copyWith(
          clubDetail: HomeClubDetailFailure(result.failureOrDefault)));
      return;
    }

    emit(state.copyWith(clubDetail: HomeClubDetailSuccess(listArticles)));
  }
}
