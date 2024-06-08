import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_article_request.g.dart';

@JsonSerializable()
class SaveArticleRequest {
  @JsonKey(name: 'article')
  final int articleId;

  SaveArticleRequest({required this.articleId});

  Map<String, dynamic> toJson() => _$SaveArticleRequestToJson(this);
}
