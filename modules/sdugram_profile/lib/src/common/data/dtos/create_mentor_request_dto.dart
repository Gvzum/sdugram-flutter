import 'package:json_annotation/json_annotation.dart';
import 'package:sdugram_profile/src/common/domain/models/create_mentor_request_model.dart';

part 'create_mentor_request_dto.g.dart';

@JsonSerializable()
class CreateMentorRequestDto implements CreateMentorRequestModel {
  @override
  @JsonKey(name: 'cover_letter')
  final String coverLetter;
  @override
  final String occupation;
  @override
  final String university;
  @override
  final String company;
  @override
  @JsonKey(name: 'year_experience')
  final int yearExperience;

  CreateMentorRequestDto(
      {required this.coverLetter,
      required this.occupation,
      required this.university,
      required this.company,
      required this.yearExperience});

  Map<String, dynamic> toJson() => _$CreateMentorRequestDtoToJson(this);
}
