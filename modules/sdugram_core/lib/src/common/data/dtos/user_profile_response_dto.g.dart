// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileResponseDto _$UserProfileResponseDtoFromJson(
        Map<String, dynamic> json) =>
    UserProfileResponseDto(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      username: json['username'] as String,
      profileType: json['profile_type'] as String,
      profileData: ProfileDetailDto.fromJson(
          json['profile_data'] as Map<String, dynamic>),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$UserProfileResponseDtoToJson(
    UserProfileResponseDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
    'username': instance.username,
    'profile_type': instance.profileType,
    'profile_data': instance.profileData.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  return val;
}
