import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/apply_mentees_behavior.dart';


@injectable
class ApplyMenteesUseCase implements Callable<ApplyMenteesRequest, void> {
  final ApplyMenteesBehavior _applyMenteesBehavior;

  ApplyMenteesUseCase(this._applyMenteesBehavior);

  @override
  Future<Result<void>> call(ApplyMenteesRequest params) {
    return _applyMenteesBehavior.applyMentees(
        id: params.id, requestStatus: params.status);
  }
}

class ApplyMenteesRequest {
  final int id;
  final String status;

  ApplyMenteesRequest({required this.id, required this.status});
}
