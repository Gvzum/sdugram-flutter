import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentees_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentee_request_model.dart';

@injectable
class FetchMenteesUseCase implements Callable<int, List<MenteeRequestModel>> {
  final FetchMenteesBehavior _fetchArticlesBehavior;

  FetchMenteesUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<List<MenteeRequestModel>>> call(int id) {
    return _fetchArticlesBehavior.fetchMentees(id: id);
  }
}
