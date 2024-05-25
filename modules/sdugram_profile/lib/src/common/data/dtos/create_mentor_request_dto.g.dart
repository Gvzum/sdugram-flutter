// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_mentor_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMentorRequestDto _$CreateMentorRequestDtoFromJson(
        Map<String, dynamic> json) =>
    CreateMentorRequestDto(
      coverLetter: json['cover_letter'] as String,
      occupation: json['occupation'] as String,
      university: json['university'] as String,
      company: json['company'] as String,
      yearExperience: (json['year_experience'] as num).toInt(),
    );

Map<String, dynamic> _$CreateMentorRequestDtoToJson(
        CreateMentorRequestDto instance) =>
    <String, dynamic>{
      'cover_letter': instance.coverLetter,
      'occupation': instance.occupation,
      'university': instance.university,
      'company': instance.company,
      'year_experience': instance.yearExperience,
    };
