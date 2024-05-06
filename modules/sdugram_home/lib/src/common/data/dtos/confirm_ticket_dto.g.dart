// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmTicketDto _$ConfirmTicketDtoFromJson(Map<String, dynamic> json) =>
    ConfirmTicketDto(
      cardId: (json['credit_card_id'] as num).toInt(),
      ticketId: json['ticket_id'] as String,
    );

Map<String, dynamic> _$ConfirmTicketDtoToJson(ConfirmTicketDto instance) =>
    <String, dynamic>{
      'credit_card_id': instance.cardId,
      'ticket_id': instance.ticketId,
    };
