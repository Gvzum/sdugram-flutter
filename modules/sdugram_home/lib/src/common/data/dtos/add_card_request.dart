class AddCardRequest {
  final String cardNumber;
  final String cardholderName;
  final int expirationMonth;
  final int expirationYear;

  AddCardRequest(
      {required this.cardNumber,
      required this.cardholderName,
      required this.expirationMonth,
      required this.expirationYear});
}
