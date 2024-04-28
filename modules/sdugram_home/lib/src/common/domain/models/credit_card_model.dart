class CreditCardModel {
  final String cardNumber;
  final String cardholderName;
  final int expirationMonth;
  final int expirationYear;
  final int id;
  final int user;

  CreditCardModel(
      {required this.cardNumber,
      required this.cardholderName,
      required this.expirationMonth,
      required this.expirationYear,
      required this.id,
      required this.user});
}

class ListCreditCardModel {
  final int count;
  final int? next;
  final int? previous;
  final List<CreditCardModel> results;

  ListCreditCardModel(
      {required this.count,
        required this.next,
        required this.previous,
        required this.results});
}