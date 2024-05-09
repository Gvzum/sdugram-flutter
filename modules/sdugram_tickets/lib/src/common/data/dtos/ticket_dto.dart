import 'package:sdugram_core/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_tickets/src/common/data/dtos/event_ticket_dto.dart';

part 'ticket_dto.g.dart';

@JsonSerializable()
class TicketDto {
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  final EventTicketDto event;
  @JsonKey(name: 'order_id')
  final String orderId;
  final UserDto user;
  @JsonKey(name: 'qr_image')
  final String? qrImage;

  TicketDto({required this.paymentStatus, required this.event, required this.orderId, required this.user, required this.qrImage});

  factory TicketDto.fromJson(Map<String, dynamic> json) =>
      _$TicketDtoFromJson(json);


  Map<String, dynamic> toJson() => _$TicketDtoToJson(this);
}


