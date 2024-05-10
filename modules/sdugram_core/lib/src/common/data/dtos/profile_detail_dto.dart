import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/src/common/domain/models/profile_detail_model.dart';

part 'profile_detail_dto.g.dart';

@JsonSerializable()
class ProfileDetailDto implements ProfileDetailModel {
  @override
  final String? bio;
  @override
  @JsonKey(name: 'head_person')
  final String? headPerson;
  @override
  final String? avatar;
  @override
  final String? university;
  @override
  final String? occupation;
  @override
  final String? company;
  @override
  @JsonKey(name: 'year_experience')
  final int? yearExperience;

  ProfileDetailDto(
      {required this.bio,
      required this.headPerson,
      required this.avatar,
      required this.university,
      required this.occupation,
      required this.company,
      required this.yearExperience});

  factory ProfileDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDetailDtoToJson(this);
}
