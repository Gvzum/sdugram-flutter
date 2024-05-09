// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) => TicketDto(
      paymentStatus: json['payment_status'] as String,
      event: EventTicketDto.fromJson(json['event'] as Map<String, dynamic>),
      orderId: json['order_id'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      qrImage: json['qr_image'] as String?,
    );

Map<String, dynamic> _$TicketDtoToJson(TicketDto instance) {
  final val = <String, dynamic>{
    'payment_status': instance.paymentStatus,
    'event': instance.event.toJson(),
    'order_id': instance.orderId,
    'user': instance.user.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qr_image', instance.qrImage);
  return val;
}
