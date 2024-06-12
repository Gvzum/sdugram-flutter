import 'package:json_annotation/json_annotation.dart';

part 'participants_dto.g.dart';


@JsonSerializable()
class ParticipantsDto {
  final String email;
  final String username;
  final int id;
  @JsonKey(name: 'profile_data')
  final ProfileData? profileData;
  @JsonKey(name: 'profile_type')
  final String? profileType;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'date_joined')
  final DateTime dateJoined;
  @JsonKey(name: 'is_superuser')
  final bool isSuperuser;

  ParticipantsDto({
    required this.email,
    required this.username,
    required this.id,
    required this.profileData,
    required this.profileType,
    required this.firstName,
    required this.lastName,
    required this.dateJoined,
    required this.isSuperuser,
  });

  factory ParticipantsDto.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ParticipantsDtoToJson(this);
}

@JsonSerializable()
class ProfileData {
  final String bio;
  final String university;
  final String? avatar;
  final String occupation;
  final String company;
  @JsonKey(name: 'year_experience')
  final int yearExperience;

  ProfileData({
    required this.bio,
    required this.university,
    this.avatar,
    required this.occupation,
    required this.company,
    required this.yearExperience,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}