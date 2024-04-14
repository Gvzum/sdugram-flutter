import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_dto.g.dart';

@JsonSerializable()
class RegisterRequestDto {
  final String email;
  final String username;
  final String password;
  @JsonKey(name: 'password_again')
  final String passwordAgain;

  RegisterRequestDto(
      {required this.email,
      required this.username,
      required this.password,
      required this.passwordAgain});

  factory RegisterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestDtoToJson(this);
}
