import 'package:sdugram_core/domain.dart';

abstract class SaveArticleBehavior {
  Future<Result<void>> saveArticle({required int articleId});
}
