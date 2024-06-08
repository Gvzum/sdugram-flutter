import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/save_article_behavior.dart';

import '../behaviors/undo_save_article_behavior.dart';

@injectable
class UndoSaveArticleUseCase implements Callable<int, void> {
  final UndoSaveArticleBehavior _undoSaveArticleBehavior;

  UndoSaveArticleUseCase(this._undoSaveArticleBehavior);

  @override
  Future<Result<void>> call(int articleId) {
    return _undoSaveArticleBehavior.undoSaveArticle(articleId: articleId);
  }
}
