import 'package:sdugram_home/sdugram_home.dart';

class ClubDetailModel {
  final String username;
  final String bio;
  final List<ArticleModel> activeEvents;

  ClubDetailModel(
      {required this.username, required this.bio, required this.activeEvents});
}
