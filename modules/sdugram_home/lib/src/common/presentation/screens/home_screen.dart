import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_bloc.dart';
import 'package:sdugram_home/src/common/presentation/screens/events_screen.dart';
import 'package:sdugram_home/src/common/presentation/screens/clubs_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.di<HomeBloc>(),
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: const SduInputSearch(),
          backgroundColor: kBackgroundColor,
        ),
        body: const SduSegmentedControlTab(
          options: [
            TabOption(title: 'Events', view: EventsScreen()),
            TabOption(title: 'Clubs', view: ClubsScreen())
          ],
        ),
      ),
    );
  }
}
