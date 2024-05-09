import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_home/src/common/data/dtos/author_dto.dart';
import 'package:sdugram_home/src/common/data/dtos/category_dto.dart';
import 'package:sdugram_core/src/common/data/dtos/event_dto.dart';

part 'article_detail_dto.g.dart';

@JsonSerializable()
class ArticleDetailDto {
  final String title;
  final String? subtitle;
  final String? body;
  @JsonKey(name: 'background_image')
  final String? backgroundImage;
  final List<CategoryDto> categories;
  final EventDto? event;
  @JsonKey(name: 'published_date')
  final DateTime publishedDate;
  final AuthorDto author;

  ArticleDetailDto(
      {required this.title,
        this.subtitle,
        this.body,
        this.backgroundImage,
        required this.categories,
        this.event,
        required this.publishedDate,
        required this.author});

  factory ArticleDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDetailDtoToJson(this);
}
