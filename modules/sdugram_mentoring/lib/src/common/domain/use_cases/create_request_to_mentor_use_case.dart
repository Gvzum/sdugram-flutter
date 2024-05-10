import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentor_request_model.dart';

import '../behaviors/create_request_to_mentor_behavior.dart';

@injectable
class CreateRequestToMentorUseCase
    implements Callable<MentorRequestModel, void> {
  final CreateRequestToMentorBehavior _fetchArticlesBehavior;

  CreateRequestToMentorUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<void>> call(MentorRequestModel params) {
    return _fetchArticlesBehavior.createRequestMentor(
      id: params.mentor,
      letter: params.coverLetter,
    );
  }
}
