import 'package:sdugram_core/src/common/domain/models/profile_detail_model.dart';

class UserProfileModel {
  final int id;
  final String email;
  final String username;
  final String? firstName;
  final String? lastName;
  final String? profileType;
  final ProfileDetailModel? profileData;

  UserProfileModel(
      {required this.id,
      required this.email,
      required this.username,
      this.firstName,
      this.lastName,
      this.profileType,
      this.profileData});
}
