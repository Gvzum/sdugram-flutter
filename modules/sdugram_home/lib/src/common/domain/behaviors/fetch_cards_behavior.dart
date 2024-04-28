import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/credit_card_model.dart';

abstract class FetchCardsBehavior {
  Future<Result<ListCreditCardModel>> fetchCards();
}
