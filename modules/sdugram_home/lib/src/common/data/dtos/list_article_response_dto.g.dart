// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_article_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListArticleResponseDto _$ListArticleResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ListArticleResponseDto(
      count: json['count'] as int,
      next: json['next'] as int?,
      previous: json['previous'] as int?,
      results: (json['results'] as List<dynamic>)
          .map((e) => ArticleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListArticleResponseDtoToJson(
    ListArticleResponseDto instance) {
  final val = <String, dynamic>{
    'count': instance.count,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('next', instance.next);
  writeNotNull('previous', instance.previous);
  val['results'] = instance.results.map((e) => e.toJson()).toList();
  return val;
}
