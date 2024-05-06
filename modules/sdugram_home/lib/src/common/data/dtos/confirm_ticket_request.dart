import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_ticket_request.g.dart';

@JsonSerializable()
class ConfirmTicketRequest {
  @JsonKey(name: 'ticket_id')
  final String ticketId;
  @JsonKey(name: 'credit_card_id')
  final int? cardId;

  ConfirmTicketRequest({required this.ticketId, required this.cardId});

  Map<String, dynamic> toJson() => _$ConfirmTicketRequestToJson(this);
}
