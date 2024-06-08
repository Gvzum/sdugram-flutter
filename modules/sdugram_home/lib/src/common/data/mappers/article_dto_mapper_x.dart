import 'package:sdugram_home/src/common/data/dtos/article_dto.dart';
import 'package:sdugram_core/src/common/data/dtos/event_dto.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';

extension ArticleDtoMapperX on ArticleDto {
  ArticleModel toModel() =>  ArticleModel(
          title: title,
          subtitle: subtitle,
          body: body,
          backgroundImage: backgroundImage,
          id: id,
          categories: categories.map((e) => e.name).toList(),
          event: event?.toModel(),
          publishedDate: publishedDate,
          author: author,
          isSaved: isSaved);

}