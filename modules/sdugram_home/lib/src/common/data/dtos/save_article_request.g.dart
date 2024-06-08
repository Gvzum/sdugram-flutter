// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_article_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveArticleRequest _$SaveArticleRequestFromJson(Map<String, dynamic> json) =>
    SaveArticleRequest(
      articleId: (json['article'] as num).toInt(),
    );

Map<String, dynamic> _$SaveArticleRequestToJson(SaveArticleRequest instance) =>
    <String, dynamic>{
      'article': instance.articleId,
    };
