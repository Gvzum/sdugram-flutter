import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_clubs_behavior.dart';
import 'package:sdugram_core/src/common/domain/models/user_profile_model.dart';

@injectable
class FetchClubsUseCase implements Callable<void, List<UserProfileModel>> {
  final FetchClubsBehavior _fetchArticlesBehavior;

  FetchClubsUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<List<UserProfileModel>>> call(_) {
    return _fetchArticlesBehavior.fetchClubs();
  }
}
