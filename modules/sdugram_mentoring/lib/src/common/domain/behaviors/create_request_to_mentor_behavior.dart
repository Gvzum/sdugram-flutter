import 'package:sdugram_core/domain.dart';

abstract class CreateRequestToMentorBehavior {
  Future<Result<void>> createRequestMentor({
    required int id,
    required String letter,
  });
}
