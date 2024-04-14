import 'package:sdugram_home/src/common/data/dtos/event_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/list_article_response_dto.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';

extension ListArticleResponseDtoMapperX on ListArticleResponseDto {
  ListArticleModel toModel() => ListArticleModel(
      count: count,
      next: next,
      previous: previous,
      results: results
          .map((e) => ArticleModel(
              title: e.title,
              subtitle: e.subtitle,
              body: e.body,
              backgroundImage: e.backgroundImage,
              id: e.id,
              categories: e.categories,
              event: e.event?.toModel(),
              publishedDate: e.publishedDate,
              author: e.author))
          .toList());
}
