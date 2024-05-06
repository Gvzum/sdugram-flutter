import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_request.g.dart';

@JsonSerializable()
class AddCardRequest {
  @JsonKey(name: 'card_number')
  final String cardNumber;
  @JsonKey(name: 'cardholder_name')
  final String cardholderName;
  @JsonKey(name: 'expiration_month')
  final int expirationMonth;
  @JsonKey(name: 'expiration_year')
  final int expirationYear;

  AddCardRequest(
      {required this.cardNumber,
      required this.cardholderName,
      required this.expirationMonth,
      required this.expirationYear});

  Map<String, dynamic> toJson() => _$AddCardRequestToJson(this);

}
