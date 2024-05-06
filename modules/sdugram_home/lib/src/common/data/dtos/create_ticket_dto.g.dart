// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTicketDto _$CreateTicketDtoFromJson(Map<String, dynamic> json) =>
    CreateTicketDto(
      paymentStatus: json['payment_status'] as String,
      eventId: (json['event'] as num).toInt(),
      ticketId: json['ticket_id'] as String,
      qrImageUrl: json['qr_image'] as String,
    );

Map<String, dynamic> _$CreateTicketDtoToJson(CreateTicketDto instance) =>
    <String, dynamic>{
      'payment_status': instance.paymentStatus,
      'event': instance.eventId,
      'ticket_id': instance.ticketId,
      'qr_image': instance.qrImageUrl,
    };
