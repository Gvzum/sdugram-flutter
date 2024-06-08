import 'package:sdugram_core/domain.dart';

class ArticleModel {
  final String title;
  final String? subtitle;
  final String? body;
  final String? backgroundImage;
  final int id;
  final List<String> categories;
  final EventModel? event;
  final DateTime publishedDate;
  final AuthorModel author;
  final bool isSaved;

  ArticleModel(
      {required this.title,
      this.subtitle,
      this.body,
      this.backgroundImage,
      required this.id,
      required this.categories,
      this.event,
      required this.publishedDate,
      required this.author,
      required this.isSaved});
}

class ListArticleModel {
  final int count;
  final String? next;
  final int? previous;
  final List<ArticleModel> results;

  ListArticleModel(
      {required this.count,
      required this.next,
      required this.previous,
      required this.results});
}
