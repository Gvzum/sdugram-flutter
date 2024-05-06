// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventDto _$EventDtoFromJson(Map<String, dynamic> json) => EventDto(
      id: (json['id'] as num).toInt(),
      startTime: DateTime.parse(json['start_time'] as String),
      location: json['location'] as String?,
      price: json['price'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EventDtoToJson(EventDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'start_time': instance.startTime.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location', instance.location);
  writeNotNull('price', instance.price);
  writeNotNull('quantity', instance.quantity);
  return val;
}
