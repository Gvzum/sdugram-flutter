import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/src/common/data/dtos/profile_detail_dto.dart';
import 'package:sdugram_core/src/common/domain/models/user_profile_model.dart';

part 'user_profile_response_dto.g.dart';

@JsonSerializable()
class UserProfileResponseDto implements UserProfileModel {
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
  @JsonKey(name: 'profile_data')
  final ProfileDetailDto profileData;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  UserProfileResponseDto({
    required this.id,
    required this.email,
    required this.username,
    required this.profileType,
    required this.profileData,
    this.firstName,
    this.lastName,
  });

  factory UserProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileResponseDtoToJson(this);
}
