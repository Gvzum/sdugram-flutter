import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/club_model.dart';

abstract class FetchClubsBehavior {
  Future<Result<List<ClubModel>>> fetchClubs();
}
