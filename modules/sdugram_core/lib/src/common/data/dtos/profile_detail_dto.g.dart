// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDetailDto _$ProfileDetailDtoFromJson(Map<String, dynamic> json) =>
    ProfileDetailDto(
      bio: json['bio'] as String?,
      headPerson: json['head_person'] as String?,
      avatar: json['avatar'] as String?,
      university: json['university'] as String?,
      occupation: json['occupation'] as String?,
      company: json['company'] as String?,
      yearExperience: (json['year_experience'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProfileDetailDtoToJson(ProfileDetailDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bio', instance.bio);
  writeNotNull('head_person', instance.headPerson);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('university', instance.university);
  writeNotNull('occupation', instance.occupation);
  writeNotNull('company', instance.company);
  writeNotNull('year_experience', instance.yearExperience);
  return val;
}
