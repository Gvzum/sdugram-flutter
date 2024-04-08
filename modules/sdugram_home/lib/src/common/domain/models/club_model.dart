import 'package:sdugram_home/src/common/domain/models/profile_club_model.dart';

class ClubModel {
  final int id;
  final String email;
  final String username;
  final String? profileType;
  final ProfileClubModel? profileData;

  ClubModel(
      {required this.id,
      required this.email,
      required this.username,
      this.profileType,
      this.profileData});
}
