import 'package:sdugram_core/domain.dart';

abstract class UndoSaveArticleBehavior {
  Future<Result<void>> undoSaveArticle({required int articleId});
}
