import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_home/sdugram_home.dart';
import 'package:sdugram_home/src/common/data/dtos/profile_club_dto.dart';

part 'club_dto.g.dart';

@JsonSerializable()
class ClubDto {
  final int id;
  final String email;
  final String username;
  @JsonKey(name: 'profile_type')
  final String profileType;
  @JsonKey(name: 'profile_data')
  final ProfileClubDto profileData;

  ClubDto(
      {required this.id,
      required this.email,
      required this.username,
      required this.profileType,
      required this.profileData});

  factory ClubDto.fromJson(Map<String, dynamic> json) =>
      _$ClubDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClubDtoToJson(this);
}
