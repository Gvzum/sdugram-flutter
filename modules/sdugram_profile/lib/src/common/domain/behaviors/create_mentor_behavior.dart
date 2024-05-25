import 'package:sdugram_core/domain.dart';
import 'package:sdugram_profile/src/common/domain/models/create_mentor_request_model.dart';

abstract class CreateMentorBehavior {
  Future<Result<void>> createMentor({
    required CreateMentorRequestModel request,
  });
}
