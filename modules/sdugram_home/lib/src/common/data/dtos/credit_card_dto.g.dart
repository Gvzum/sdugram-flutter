// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCardDto _$CreditCardDtoFromJson(Map<String, dynamic> json) =>
    CreditCardDto(
      cardNumber: json['card_number'] as String,
      cardholderName: json['cardholder_name'] as String,
      expirationMonth: json['expiration_month'] as int,
      expirationYear: json['expiration_year'] as int,
      id: json['id'] as int,
      user: json['user'] as int,
    );

Map<String, dynamic> _$CreditCardDtoToJson(CreditCardDto instance) =>
    <String, dynamic>{
      'card_number': instance.cardNumber,
      'cardholder_name': instance.cardholderName,
      'expiration_month': instance.expirationMonth,
      'expiration_year': instance.expirationYear,
      'id': instance.id,
      'user': instance.user,
    };
