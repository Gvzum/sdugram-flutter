import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/sdugram_home.dart';

sealed class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailure extends HomeState {
  final Failure failure;

  HomeFailure({required this.failure});
}

class HomeSuccess extends HomeState {
  final ListArticleModel listArticles;

  HomeSuccess({required this.listArticles});
}
