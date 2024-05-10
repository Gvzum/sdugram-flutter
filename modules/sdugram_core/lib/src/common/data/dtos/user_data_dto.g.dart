// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataDto _$UserDataDtoFromJson(Map<String, dynamic> json) => UserDataDto(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      username: json['username'] as String,
      profileType: json['profile_type'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      profileData: ProfileDetailDto.fromJson(
          json['profile_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataDtoToJson(UserDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'profile_type': instance.profileType,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'profile_data': instance.profileData.toJson(),
    };
