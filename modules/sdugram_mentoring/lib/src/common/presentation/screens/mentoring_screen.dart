import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/src/common/presentation/screens/all_mentors_screen.dart';
import 'package:sdugram_mentoring/src/common/presentation/screens/my_mentors_screen.dart';

@RoutePage()
class MentoringScreen extends StatelessWidget {
  const MentoringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const SduInputSearch(),
        backgroundColor: kBackgroundColor,
      ),
      body: const SduSegmentedControlTab(
        options: [
          TabOption(title: 'All mentors', view: AllMentorsScreen()),
          TabOption(title: 'My mentors', view: MyMentorsScreen())
        ],
      ),
    );
  }
}
