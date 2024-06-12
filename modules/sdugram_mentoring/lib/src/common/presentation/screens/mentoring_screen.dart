import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';

import 'package:sdugram_mentoring/src/common/presentation/blocs/request/mentoring_request_bloc.dart';import 'package:shared_preferences/shared_preferences.dart';

import '../blocs/chat_bloc.dart';

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
        BlocProvider(create: (_) => context.di<MentoringRequestBloc>()),
        BlocProvider(create: (_) => context.di<ChatBloc>()),
      ],
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: const SduInputSearch(),
          backgroundColor: kBackgroundColor,
        ),
        body: const SduSegmentedControlTab(
          options: [
            TabOption(title: 'All mentors', view: AllMentorsScreen()),
            // if (isMentor)
            TabOption(title: 'Requests', view: ChatScreen()),
          ],
        ),
      ),
    );
  }
}
