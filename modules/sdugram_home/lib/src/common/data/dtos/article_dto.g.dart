// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) => ArticleDto(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      body: json['body'] as String?,
      backgroundImage: json['background_image'] as String?,
      id: json['id'] as int,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: json['event'] == null
          ? null
          : EventDto.fromJson(json['event'] as Map<String, dynamic>),
      publishedDate: DateTime.parse(json['published_date'] as String),
      author: AuthorDto.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleDtoToJson(ArticleDto instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('body', instance.body);
  writeNotNull('background_image', instance.backgroundImage);
  val['id'] = instance.id;
  val['categories'] = instance.categories.map((e) => e.toJson()).toList();
  writeNotNull('event', instance.event?.toJson());
  val['published_date'] = instance.publishedDate.toIso8601String();
  val['author'] = instance.author.toJson();
  return val;
}
