import 'package:sdugram_home/src/common/data/dtos/credit_card_dto.dart';
import 'package:sdugram_home/src/common/domain/models/credit_card_model.dart';

extension CreditCardDtoMapperX on CreditCardDto {
  CreditCardModel toModel() {
    return CreditCardModel(
        cardNumber: cardNumber,
        cardholderName: cardholderName,
        expirationMonth: expirationMonth,
        expirationYear: expirationYear,
        id: id,
        user: user);
  }
}
