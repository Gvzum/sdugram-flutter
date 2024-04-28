import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/article_detail_model.dart';

abstract class FetchArticleBehavior {
  Future<Result<ArticleDetailModel>> fetchDetail({required int id});
}
