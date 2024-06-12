// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantsDto _$ParticipantsDtoFromJson(Map<String, dynamic> json) =>
    ParticipantsDto(
      email: json['email'] as String,
      username: json['username'] as String,
      id: (json['id'] as num).toInt(),
      profileData: json['profile_data'] == null
          ? null
          : ProfileData.fromJson(json['profile_data'] as Map<String, dynamic>),
      profileType: json['profile_type'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      dateJoined: DateTime.parse(json['date_joined'] as String),
      isSuperuser: json['is_superuser'] as bool,
    );

Map<String, dynamic> _$ParticipantsDtoToJson(ParticipantsDto instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'username': instance.username,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profile_data', instance.profileData?.toJson());
  writeNotNull('profile_type', instance.profileType);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  val['date_joined'] = instance.dateJoined.toIso8601String();
  val['is_superuser'] = instance.isSuperuser;
  return val;
}

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => ProfileData(
      bio: json['bio'] as String,
      university: json['university'] as String,
      avatar: json['avatar'] as String?,
      occupation: json['occupation'] as String,
      company: json['company'] as String,
      yearExperience: (json['year_experience'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileDataToJson(ProfileData instance) {
  final val = <String, dynamic>{
    'bio': instance.bio,
    'university': instance.university,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar', instance.avatar);
  val['occupation'] = instance.occupation;
  val['company'] = instance.company;
  val['year_experience'] = instance.yearExperience;
  return val;
}
