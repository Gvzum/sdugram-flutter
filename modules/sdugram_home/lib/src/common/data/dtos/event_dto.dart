import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';

part 'event_dto.g.dart';

@JsonSerializable()
class EventDto {
  final int id;
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  final String? location;
  final String? price;
  final int? quantity;

  EventDto(
      {required this.id,
      required this.startTime,
      required this.location,
      required this.price,
      required this.quantity});

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EventDtoToJson(this);
}

extension EventDtoMapperX on EventDto {
  EventModel toModel() => EventModel(
      id: id,
      startTime: startTime,
      location: location,
      price: price,
      quantity: quantity);
}
