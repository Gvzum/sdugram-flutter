import 'package:sdugram_core/src/common/domain/models/profile_detail_model.dart';

class CoreUserDataModel {
  final int id;
  final String email;
  final String username;
  final String firstName;
  final String lastName;
  final String? profileType;
  final ProfileDetailModel? profileData;

  CoreUserDataModel({
    required this.id,
    required this.email,
    required this.username,
    required this.profileType,
    required this.profileData,
    required this.firstName,
    required this.lastName,
  });
}
