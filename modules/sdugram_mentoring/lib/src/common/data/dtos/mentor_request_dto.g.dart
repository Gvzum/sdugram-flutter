// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorRequestDto _$MentorRequestDtoFromJson(Map<String, dynamic> json) =>
    MentorRequestDto(
      coverLetter: json['cover_letter'] as String,
      mentor: (json['mentor'] as num).toInt(),
    );

Map<String, dynamic> _$MentorRequestDtoToJson(MentorRequestDto instance) =>
    <String, dynamic>{
      'cover_letter': instance.coverLetter,
      'mentor': instance.mentor,
    };
