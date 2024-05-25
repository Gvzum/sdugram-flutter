import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_profile/src/common/domain/behaviors/create_mentor_behavior.dart';
import 'package:sdugram_profile/src/common/domain/models/create_mentor_request_model.dart';

@injectable
class CreateMentorUseCase implements Callable<CreateMentorRequestModel, void> {
  final CreateMentorBehavior _fetchArticlesBehavior;

  CreateMentorUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<void>> call(CreateMentorRequestModel request) {
    return _fetchArticlesBehavior.createMentor(
      request: request,
    );
  }
}
