import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_articles_by_author_behavior.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_club_detail_behavior.dart';
import 'package:sdugram_home/src/common/domain/models/club_detail_model.dart';

@injectable
class FetchClubDetailUseCase
    implements Callable<String, ClubDetailModel> {
  final FetchClubDetailBehavior _fetchClubDetailBehavior;
  final FetchArticlesByAuthorBehavior _fetchArticlesBehavior;

  FetchClubDetailUseCase(
      this._fetchArticlesBehavior, this._fetchClubDetailBehavior);

  @override
  Future<Result<ClubDetailModel>> call(String id) async {
    final resultClubDetail =
        await _fetchClubDetailBehavior.fetchClubDetail(clubId: id);
    final clubDetail = resultClubDetail.value;
    if (clubDetail == null) {
      return ErrorResult(resultClubDetail.failureOrDefault);
    }

    final resultArticles =
        await _fetchArticlesBehavior.fetchArticleByAuthor(authorId: id);
    final articles = resultArticles.value;
    if (articles == null) {
      return ErrorResult(resultArticles.failureOrDefault);
    }

    return SuccessResult(ClubDetailModel(
        username: clubDetail.username,
        bio: clubDetail.profileData?.bio ?? '',
        activeEvents: articles.results));
  }
}

