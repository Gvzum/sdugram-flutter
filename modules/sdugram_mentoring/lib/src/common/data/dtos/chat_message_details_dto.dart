import 'package:json_annotation/json_annotation.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_details_model.dart';

part 'chat_message_details_dto.g.dart';

@JsonSerializable()
class ChatMessageDetailsDto {
  final int id;
  final List<Participant> participants;
  final List<MessageDto> messages;

  ChatMessageDetailsDto({
    required this.id,
    required this.participants,
    required this.messages,
  });

  factory ChatMessageDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDetailsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageDetailsDtoToJson(this);
}

@JsonSerializable()
class Participant {
  final int id;
  final String username;
  @JsonKey(name: 'profile_data')
  final ProfileData profileData;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);

  Participant({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.profileData,
  });

  Map<String, dynamic> toJson() => _$ParticipantToJson(this);
}

@JsonSerializable()
class MessageDto implements Messages {
  @override
  final int id;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final int sender;

  MessageDto({
    required this.id,
    required this.content,
    required this.createdAt,
    required this.sender,
  });

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);
}
