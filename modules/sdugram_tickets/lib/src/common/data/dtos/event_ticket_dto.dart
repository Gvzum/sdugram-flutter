import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_tickets/src/common/domain/models/event_ticket_model.dart';

part 'event_ticket_dto.g.dart';

@JsonSerializable()
class EventTicketDto implements EventTicketModel {
  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  @override
  final String? price;
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  @JsonKey(name: 'background_image')
  final String backgroundImage;

  EventTicketDto(
      {required this.startTime,
      required this.price,
      required this.title,
      required this.subtitle,
      required this.backgroundImage});

  factory EventTicketDto.fromJson(Map<String, dynamic> json) =>
      _$EventTicketDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EventTicketDtoToJson(this);
}

