import 'package:json_annotation/json_annotation.dart';
import 'package:sdugram_mentoring/src/common/data/dtos/participants_dto.dart';

part 'chat_base_dto.g.dart';


@JsonSerializable()
class ChatBaseDto {
  final int id;
  final List<ParticipantsDto> participants;
  @JsonKey(name: 'last_message')
  final LastMessage? lastMessage;

  ChatBaseDto(this.participants, this.lastMessage, {required this.id});

  factory ChatBaseDto.fromJson(Map<String, dynamic> json) =>
      _$ChatBaseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChatBaseDtoToJson(this);

}


@JsonSerializable()
class LastMessage {
  final int id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final String content;

  LastMessage({
    required this.id,
    required this.createdAt,
    required this.content,
  });

  factory LastMessage.fromJson(Map<String, dynamic> json) =>
      _$LastMessageFromJson(json);

  Map<String, dynamic> toJson() => _$LastMessageToJson(this);
}
