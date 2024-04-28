import 'package:sdugram_core/domain.dart';

class ArticleDetailModel {
  final String title;
  final String? subtitle;
  final String? body;
  final String? backgroundImage;
  final List<String> categories;
  final EventModel? event;
  final DateTime publishedDate;
  final AuthorModel author;

  ArticleDetailModel(
      {required this.title,
        this.subtitle,
        this.body,
        this.backgroundImage,
        required this.categories,
        this.event,
        required this.publishedDate,
        required this.author});
}