import 'package:json_annotation/json_annotation.dart';
import 'package:sdugram_core/data.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentee_request_model.dart';

part 'mentee_request_dto.g.dart';

@JsonSerializable()
class MenteeRequestDto {
  @JsonKey(name: 'cover_letter')
  final String coverLetter;
  final int id;
  final UserProfileResponseDto mentee;
  final int mentor;
  @JsonKey(name: 'request_status')
  final String requestStatus;

  MenteeRequestDto({
    required this.coverLetter,
    required this.mentor,
    required this.id,
    required this.mentee,
    required this.requestStatus,
  });

  Map<String, dynamic> toJson() => _$MenteeRequestDtoToJson(this);

  factory MenteeRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MenteeRequestDtoFromJson(json);
}

extension MenteeRequestDtoMapperX on MenteeRequestDto {
  MenteeRequestModel toModel() {
    return MenteeRequestModel(
        mentor: mentor,
        coverLetter: coverLetter,
        requestStatus: requestStatus,
        mentee: mentee,
        id: id);
  }
}
