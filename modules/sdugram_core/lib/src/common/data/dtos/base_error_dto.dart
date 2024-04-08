import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_error_dto.g.dart';

@JsonSerializable()
class BaseErrorDto {
  final List<String> fieldMessages;

  BaseErrorDto({
    this.fieldMessages = const [],
  });

  factory BaseErrorDto.fromJson(Map<String, dynamic> json) =>
      _$BaseErrorDtoFromJson(json);
}