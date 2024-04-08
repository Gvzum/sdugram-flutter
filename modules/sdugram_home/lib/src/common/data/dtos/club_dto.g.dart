// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClubDto _$ClubDtoFromJson(Map<String, dynamic> json) => ClubDto(
      id: json['id'] as int,
      email: json['email'] as String,
      username: json['username'] as String,
      profileType: json['profile_type'] as String,
      profileData:
          ProfileClubDto.fromJson(json['profile_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClubDtoToJson(ClubDto instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'profile_type': instance.profileType,
      'profile_data': instance.profileData.toJson(),
    };
