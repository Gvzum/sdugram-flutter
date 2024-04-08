import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';

part 'author_dto.g.dart';

@JsonSerializable()
class AuthorDto extends AuthorModel {
  AuthorDto({required super.id, required super.username});

  factory AuthorDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDtoToJson(this);
}
