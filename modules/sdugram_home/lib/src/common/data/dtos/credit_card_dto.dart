import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card_dto.g.dart';

@JsonSerializable()
class CreditCardDto {
  @JsonKey(name: 'card_number')
  final String cardNumber;
  @JsonKey(name: 'cardholder_name')
  final String cardholderName;
  @JsonKey(name: 'expiration_month')
  final int expirationMonth;
  @JsonKey(name: 'expiration_year')
  final int expirationYear;
  final int id;
  final int user;

  CreditCardDto(
      {required this.cardNumber,
      required this.cardholderName,
      required this.expirationMonth,
      required this.expirationYear,
      required this.id,
      required this.user});

  factory CreditCardDto.fromJson(Map<String, dynamic> json) =>
      _$CreditCardDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardDtoToJson(this);
}
