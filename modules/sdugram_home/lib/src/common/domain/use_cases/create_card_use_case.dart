import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/data/dtos/add_card_request.dart';
import 'package:sdugram_home/src/common/domain/behaviors/create_card_behavior.dart';

@injectable
class CreateCardUseCase implements Callable<AddCardParams, void> {
  final CreateCardBehavior _fetchArticlesBehavior;

  CreateCardUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<void>> call(AddCardParams params) {
    return _fetchArticlesBehavior.createCards(request: AddCardRequest(
      cardNumber: params.cardNumber,
      cardholderName: params.cardholderName,
      expirationMonth: params.expirationMonth,
      expirationYear: params.expirationYear,));
  }
}

class AddCardParams {
  final String cardNumber;
  final String cardholderName;
  final int expirationMonth;
  final int expirationYear;

  AddCardParams({required this.cardNumber,
    required this.cardholderName,
    required this.expirationMonth,
    required this.expirationYear});
}