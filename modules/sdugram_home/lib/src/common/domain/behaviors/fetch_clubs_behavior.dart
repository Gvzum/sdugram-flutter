import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/src/common/domain/models/user_profile_model.dart';

abstract class FetchClubsBehavior {
  Future<Result<List<UserProfileModel>>> fetchClubs();
}
