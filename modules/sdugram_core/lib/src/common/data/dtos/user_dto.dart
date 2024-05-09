import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/src/common/domain/models/user_model.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto extends UserModel {
  UserDto({required super.email, required super.username});

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
