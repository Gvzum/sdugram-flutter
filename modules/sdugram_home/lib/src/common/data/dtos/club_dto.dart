import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_home/src/common/data/dtos/profile_club_dto.dart';
import 'package:sdugram_home/src/common/domain/models/club_model.dart';

part 'club_dto.g.dart';

@JsonSerializable()
class ClubDto implements ClubModel{
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
