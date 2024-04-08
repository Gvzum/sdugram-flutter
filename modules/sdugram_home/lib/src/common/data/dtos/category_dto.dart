import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';

part 'category_dto.g.dart';

@JsonSerializable()
class CategoryDto extends CategoryModel {
  CategoryDto({required super.name, required super.description});

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);
}
