// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_club_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileClubDto _$ProfileClubDtoFromJson(Map<String, dynamic> json) =>
    ProfileClubDto(
      bio: json['bio'] as String?,
      headPerson: json['headPerson'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$ProfileClubDtoToJson(ProfileClubDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bio', instance.bio);
  writeNotNull('headPerson', instance.headPerson);
  writeNotNull('avatar', instance.avatar);
  return val;
}
