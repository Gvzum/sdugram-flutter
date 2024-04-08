import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_home/src/common/domain/models/profile_club_model.dart';

part 'profile_club_dto.g.dart';

@JsonSerializable()
class ProfileClubDto extends ProfileClubModel {
  ProfileClubDto(
      {required super.bio, required super.headPerson, required super.avatar});

  factory ProfileClubDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileClubDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileClubDtoToJson(this);
}
