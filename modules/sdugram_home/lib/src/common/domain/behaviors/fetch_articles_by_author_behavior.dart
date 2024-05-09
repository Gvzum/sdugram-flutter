import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';

abstract class FetchArticlesByAuthorBehavior {
  Future<Result<ListArticleModel>> fetchArticleByAuthor({required String authorId});
}
