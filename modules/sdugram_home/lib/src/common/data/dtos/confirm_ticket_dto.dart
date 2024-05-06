import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_ticket_dto.g.dart';

@JsonSerializable()
class ConfirmTicketDto {
  @JsonKey(name: 'credit_card_id')
  final int cardId;
  @JsonKey(name: 'ticket_id')
  final String ticketId;

  ConfirmTicketDto({required this.cardId, required this.ticketId});

  factory ConfirmTicketDto.fromJson(Map<String, dynamic> json) =>
      _$ConfirmTicketDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmTicketDtoToJson(this);
}
