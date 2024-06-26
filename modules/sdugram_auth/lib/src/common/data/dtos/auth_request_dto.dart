import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request_dto.g.dart';

@JsonSerializable()
class AuthRequestDto {
  final String username;
  final String password;

  AuthRequestDto({required this.username, required this.password});

  factory AuthRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthRequestDtoToJson(this);
}