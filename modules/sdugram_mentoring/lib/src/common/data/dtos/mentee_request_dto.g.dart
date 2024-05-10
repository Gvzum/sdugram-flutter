// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentee_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenteeRequestDto _$MenteeRequestDtoFromJson(Map<String, dynamic> json) =>
    MenteeRequestDto(
      coverLetter: json['cover_letter'] as String,
      mentor: (json['mentor'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      mentee: UserProfileResponseDto.fromJson(
          json['mentee'] as Map<String, dynamic>),
      requestStatus: json['request_status'] as String,
    );

Map<String, dynamic> _$MenteeRequestDtoToJson(MenteeRequestDto instance) =>
    <String, dynamic>{
      'cover_letter': instance.coverLetter,
      'id': instance.id,
      'mentee': instance.mentee.toJson(),
      'mentor': instance.mentor,
      'request_status': instance.requestStatus,
    };
