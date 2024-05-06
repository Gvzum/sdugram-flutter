// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCardRequest _$AddCardRequestFromJson(Map<String, dynamic> json) =>
    AddCardRequest(
      cardNumber: json['card_number'] as String,
      cardholderName: json['cardholder_name'] as String,
      expirationMonth: (json['expiration_month'] as num).toInt(),
      expirationYear: (json['expiration_year'] as num).toInt(),
    );

Map<String, dynamic> _$AddCardRequestToJson(AddCardRequest instance) =>
    <String, dynamic>{
      'card_number': instance.cardNumber,
      'cardholder_name': instance.cardholderName,
      'expiration_month': instance.expirationMonth,
      'expiration_year': instance.expirationYear,
    };
