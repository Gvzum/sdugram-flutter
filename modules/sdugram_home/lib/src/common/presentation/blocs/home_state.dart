import 'package:sdugram_home/sdugram_home.dart';

sealed class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailure extends HomeState {
  final String message;

  HomeFailure({required this.message});
}

class HomeSuccess extends HomeState {
  final ListArticleModel listArticles;

  HomeSuccess({required this.listArticles});
}
