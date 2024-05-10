import 'package:sdugram_core/src/common/data/dtos/profile_detail_dto.dart';
import 'package:sdugram_core/src/common/domain/models/core_user_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_data_dto.g.dart';

@JsonSerializable()
class UserDataDto implements CoreUserDataModel {
  @override
  final int id;
  @override
  final String email;
  @override
  final String username;
  @override
  @JsonKey(name: 'profile_type')
  final String profileType;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'profile_data')
  final ProfileDetailDto profileData;

  UserDataDto(
      {required this.id,
      required this.email,
      required this.username,
      required this.profileType,
      required this.firstName,
      required this.lastName,
      required this.profileData});

  factory UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$UserDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataDtoToJson(this);
}
