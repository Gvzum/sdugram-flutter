import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_home/src/common/domain/models/create_ticket.dart';

part 'create_ticket_dto.g.dart';

@JsonSerializable()
class CreateTicketDto implements CreateTicket {
  @override
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @override
  @JsonKey(name: 'event')
  final int eventId;
  @override
  @JsonKey(name: 'ticket_id')
  final String ticketId;
  @override
  @JsonKey(name: 'qr_image')
  final String qrImageUrl;

  CreateTicketDto(
      {required this.paymentStatus,
      required this.eventId,
      required this.ticketId,
      required this.qrImageUrl});

  factory CreateTicketDto.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTicketDtoToJson(this);
}
