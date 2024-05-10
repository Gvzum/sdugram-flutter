
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/src/common/domain/models/core_user_data_model.dart';

abstract class FetchUserDataBehavior {
  Future<Result<CoreUserDataModel>> fetchUserData();
}
