import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentor_apply_model.dart';

part 'mentor_accept_request_dto.g.dart';

@JsonSerializable()
class MentorAcceptRequestDto  implements MentorApplyModel{
  @override
  @JsonKey(name: 'request_status')
  final String requestStatus;

  MentorAcceptRequestDto({required this.requestStatus});

  Map<String, dynamic> toJson() => _$MentorAcceptRequestDtoToJson(this);

  factory MentorAcceptRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MentorAcceptRequestDtoFromJson(json);
}
