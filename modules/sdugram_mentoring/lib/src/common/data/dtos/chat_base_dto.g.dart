// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_base_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatBaseDto _$ChatBaseDtoFromJson(Map<String, dynamic> json) => ChatBaseDto(
      (json['participants'] as List<dynamic>)
          .map((e) => ParticipantsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['last_message'] == null
          ? null
          : LastMessage.fromJson(json['last_message'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$ChatBaseDtoToJson(ChatBaseDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'participants': instance.participants.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('last_message', instance.lastMessage?.toJson());
  return val;
}

LastMessage _$LastMessageFromJson(Map<String, dynamic> json) => LastMessage(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      content: json['content'] as String,
    );

Map<String, dynamic> _$LastMessageToJson(LastMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'content': instance.content,
    };
