import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/data/dtos/add_card_request.dart';

abstract class CreateCardBehavior {
  Future<Result<void>> createCards({required AddCardRequest request});
}
