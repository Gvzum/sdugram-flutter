import 'package:sdugram_mentoring/src/common/domain/models/mentor_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mentor_request_dto.g.dart';

@JsonSerializable()
class MentorRequestDto implements MentorRequestModel {
  @override
  @JsonKey(name: 'cover_letter')
  final String coverLetter;

  @override
  final int mentor;

  MentorRequestDto({required this.coverLetter, required this.mentor});

  Map<String, dynamic> toJson() => _$MentorRequestDtoToJson(this);

  factory MentorRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MentorRequestDtoFromJson(json);
}
