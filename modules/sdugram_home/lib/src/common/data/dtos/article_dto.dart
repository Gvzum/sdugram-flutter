import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_home/src/common/data/dtos/author_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/category_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/event_dto.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';

part 'article_dto.g.dart';

@JsonSerializable()
class ArticleDto {
  final String title;
  final String? subtitle;
  final String? body;
  @JsonKey(name: 'background_image')
  final String? backgroundImage;
  final int id;
  final List<CategoryDto> categories;
  final EventDto event;
  @JsonKey(name: 'published_date')
  final DateTime publishedDate;
  final AuthorDto author;

  ArticleDto(
      {required this.title,
      this.subtitle,
      this.body,
      this.backgroundImage,
      required this.id,
      required this.categories,
      required this.event,
      required this.publishedDate,
      required this.author});

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDtoToJson(this);
}
