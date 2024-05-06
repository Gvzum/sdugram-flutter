// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_ticket_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmTicketRequest _$ConfirmTicketRequestFromJson(
        Map<String, dynamic> json) =>
    ConfirmTicketRequest(
      ticketId: json['ticket_id'] as String,
      cardId: (json['credit_card_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ConfirmTicketRequestToJson(
    ConfirmTicketRequest instance) {
  final val = <String, dynamic>{
    'ticket_id': instance.ticketId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credit_card_id', instance.cardId);
  return val;
}
