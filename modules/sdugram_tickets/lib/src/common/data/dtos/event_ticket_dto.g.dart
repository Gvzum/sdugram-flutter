// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventTicketDto _$EventTicketDtoFromJson(Map<String, dynamic> json) =>
    EventTicketDto(
      startTime: DateTime.parse(json['start_time'] as String),
      price: json['price'] as String?,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      backgroundImage: json['background_image'] as String,
    );

Map<String, dynamic> _$EventTicketDtoToJson(EventTicketDto instance) {
  final val = <String, dynamic>{
    'start_time': instance.startTime.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  val['title'] = instance.title;
  writeNotNull('subtitle', instance.subtitle);
  val['background_image'] = instance.backgroundImage;
  return val;
}
