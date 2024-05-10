import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/src/common/domain/models/user_profile_model.dart';

abstract class FetchClubDetailBehavior {
  Future<Result<UserProfileModel>> fetchClubDetail({required String clubId});
}
