import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/article_model.dart';

abstract class FetchArticlesBehavior {
  Future<Result<ListArticleModel>> fetchDetails();
}
