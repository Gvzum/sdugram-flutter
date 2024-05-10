import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentors_behavior.dart';

@injectable
class FetchMentorsUseCase implements Callable<void, List<UserProfileModel>> {
  final FetchMentorsBehavior _fetchArticlesBehavior;

  FetchMentorsUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<List<UserProfileModel>>> call(_) {
    return _fetchArticlesBehavior.fetchClubs();
  }
}
