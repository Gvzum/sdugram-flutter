import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_auth/src/common/domain/models/register_response.dart';

part 'register_response_dto.g.dart';

@JsonSerializable()
class RegisterResponseDto extends RegisterResponse {
  RegisterResponseDto({required super.message});

  factory RegisterResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseDtoToJson(this);
}
