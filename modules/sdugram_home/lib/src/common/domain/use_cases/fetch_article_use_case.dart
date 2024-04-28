import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_article_behavior.dart';
import 'package:sdugram_home/src/common/domain/models/article_detail_model.dart';

@injectable
class FetchArticleUseCase implements Callable<int, ArticleDetailModel> {
  final FetchArticleBehavior _fetchArticleBehavior;

  FetchArticleUseCase(this._fetchArticleBehavior);

  @override
  Future<Result<ArticleDetailModel>> call(int id) {
    return _fetchArticleBehavior.fetchDetail(id: id);
  }
}
