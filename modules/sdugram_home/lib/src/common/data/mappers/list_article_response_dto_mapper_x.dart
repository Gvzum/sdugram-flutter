import 'package:sdugram_home/src/common/data/dtos/list_article_response_dto.dart';
import 'package:sdugram_home/src/common/data/mappers/article_dto_mapper_x.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';

extension ListArticleResponseDtoMapperX on ListArticleResponseDto {
  ListArticleModel toModel() => ListArticleModel(
      count: count,
      next: next,
      previous: previous,
      results: results.map((e) => e.toModel()).toList());
}
