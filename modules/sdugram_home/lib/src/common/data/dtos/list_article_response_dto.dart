import 'package:sdugram_home/src/common/data/dtos/article_dto.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_article_response_dto.g.dart';

@JsonSerializable()
class ListArticleResponseDto {
  final int count;
  final int? next;
  final int? previous;
  final List<ArticleDto> results;

  ListArticleResponseDto(
      {required this.count,
      required this.next,
      required this.previous,
      required this.results});

  factory ListArticleResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ListArticleResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ListArticleResponseDtoToJson(this);
}
