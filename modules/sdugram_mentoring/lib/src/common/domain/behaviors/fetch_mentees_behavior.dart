
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentee_request_model.dart';

abstract class FetchMenteesBehavior {
  Future<Result<List<MenteeRequestModel>>> fetchMentees({required int id});
}
