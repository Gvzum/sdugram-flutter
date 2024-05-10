import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat/mentoring_chat_bloc.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/mentoring_bloc.dart';
import 'package:sdugram_mentoring/src/common/presentation/screens/all_mentors_screen.dart';
import 'package:sdugram_mentoring/src/common/presentation/screens/my_mentors_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class MentoringScreen extends StatefulWidget {
  const MentoringScreen({super.key});

  @override
  State<MentoringScreen> createState() => _MentoringScreenState();
}

class _MentoringScreenState extends State<MentoringScreen> {
   bool isMentor = false;

  @override
  void initState() {
    super.initState();
    mentorClientCheck();
  }

  void mentorClientCheck() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    bool boo = prefs.getBool('isMentor') ?? false;
    setState(() {
      isMentor = boo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => context.di<MentoringBloc>()),
        BlocProvider(create: (_) => context.di<MentoringChatBloc>()),
      ],
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: const SduInputSearch(),
          backgroundColor: kBackgroundColor,
        ),
        body: SduSegmentedControlTab(
          options: [
            const TabOption(title: 'All mentors', view: AllMentorsScreen()),
            TabOption(
                title: isMentor ? 'My Students' : 'My mentors',
                view: const MyMentorsScreen())
          ],
        ),
      ),
    );
  }
}
