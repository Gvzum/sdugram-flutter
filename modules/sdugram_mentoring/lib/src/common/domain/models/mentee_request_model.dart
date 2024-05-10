import 'package:sdugram_core/domain.dart';

class MenteeRequestModel {
  final int mentor;
  final String coverLetter;
  final String requestStatus;
  final UserProfileModel mentee;
  final int id;

  MenteeRequestModel(
      {required this.mentor,
      required this.coverLetter,
      required this.requestStatus,
      required this.mentee,
      required this.id});
}
