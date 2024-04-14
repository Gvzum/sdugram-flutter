import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/sdugram_home.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_event.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchArticlesUseCase _fetchArticlesUseCase;

  HomeBloc(this._fetchArticlesUseCase) : super(HomeInitial()) {
    _setupHandlers();
    add(HomeStarted());
  }

  void _setupHandlers() {
    on<HomeStarted>(fetchArticles);
  }

  Future<void> fetchArticles(
      HomeStarted event,
      Emitter<HomeState> emit,
      ) async {
    emit(HomeLoading());
    Future.delayed(const Duration(seconds: 3));
    final result = await _fetchArticlesUseCase(null);

    final listArticles = result.value;

    if (listArticles == null) {
      emit(HomeFailure(failure: result.failureOrDefault));
      return;
    }

    emit(HomeSuccess(listArticles: listArticles));
  }
}
