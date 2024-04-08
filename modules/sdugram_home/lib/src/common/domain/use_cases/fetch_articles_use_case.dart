import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_behavior.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';

@injectable
class FetchArticlesUseCase
    implements Callable<void, ListArticleModel> {
  final FetchArticlesBehavior _fetchArticlesBehavior;

  FetchArticlesUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<ListArticleModel>> call(_) {
    return _fetchArticlesBehavior.fetchDetails();
  }
}