// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageDetailsDto _$ChatMessageDetailsDtoFromJson(
        Map<String, dynamic> json) =>
    ChatMessageDetailsDto(
      id: (json['id'] as num).toInt(),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => Participant.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatMessageDetailsDtoToJson(
        ChatMessageDetailsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'participants': instance.participants.map((e) => e.toJson()).toList(),
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };

Participant _$ParticipantFromJson(Map<String, dynamic> json) => Participant(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      profileData:
          ProfileData.fromJson(json['profile_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParticipantToJson(Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile_data': instance.profileData.toJson(),
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      sender: (json['sender'] as num).toInt(),
    );

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'sender': instance.sender,
    };
