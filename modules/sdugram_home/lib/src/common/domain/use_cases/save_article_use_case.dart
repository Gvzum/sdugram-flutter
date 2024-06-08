import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/save_article_behavior.dart';

@injectable
class SaveArticleUseCase implements Callable<int, void> {
  final SaveArticleBehavior _saveArticleBehavior;

  SaveArticleUseCase(this._saveArticleBehavior);

  @override
  Future<Result<void>> call(int articleId) {
    return _saveArticleBehavior.saveArticle(articleId: articleId);
  }
}
