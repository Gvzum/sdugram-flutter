import 'package:json_annotation/json_annotation.dart';

part 'chat_base_dto.g.dart';

@JsonSerializable()
class ChatBaseDto {

  final int id;
  // final ParticipantsDto participants;

  ChatBaseDto({required this.id});

  Map<String, dynamic> toJson() => _$ChatBaseDtoToJson(this);

  factory ChatBaseDto.fromJson(Map<String, dynamic> json) =>
      _$ChatBaseDtoFromJson(json);

}
