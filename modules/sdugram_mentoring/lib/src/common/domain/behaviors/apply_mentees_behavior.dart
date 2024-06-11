import 'package:sdugram_core/domain.dart';

abstract class ApplyMenteesBehavior {
  Future<Result<void>> applyMentees({
    required int id,
    required String requestStatus,
  });
}
