import 'package:sdugram_home/src/common/data/dtos/article_detail_dto.dart';
import 'package:sdugram_core/src/common/data/dtos/event_dto.dart';
import 'package:sdugram_home/src/common/domain/models/article_detail_model.dart';

extension ArticleDetailDtoMapperX on ArticleDetailDto {
  ArticleDetailModel toModel() => ArticleDetailModel(
      title: title,
      subtitle: subtitle,
      body: body,
      backgroundImage: backgroundImage,
      categories: categories.map((e) => e.name).toList(),
      event: event?.toModel(),
      publishedDate: publishedDate,
      author: author);
}
