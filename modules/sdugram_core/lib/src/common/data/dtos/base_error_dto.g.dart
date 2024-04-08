// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseErrorDto _$BaseErrorDtoFromJson(Map<String, dynamic> json) => BaseErrorDto(
      fieldMessages: (json['fieldMessages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BaseErrorDtoToJson(BaseErrorDto instance) =>
    <String, dynamic>{
      'fieldMessages': instance.fieldMessages,
    };
