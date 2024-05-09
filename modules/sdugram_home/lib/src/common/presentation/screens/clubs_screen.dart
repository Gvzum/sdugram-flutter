import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/src/common/presentation/blocs/clubs/home_clubs_bloc.dart';
import 'package:sdugram_home/src/common/presentation/blocs/clubs/home_clubs_state.dart';
import 'package:sdugram_home/src/common/presentation/widgets/club_list_item.dart';

@RoutePage()
class ClubsScreen extends StatelessWidget {
  const ClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: ClubList(),
    );
  }
}

class ClubList extends StatelessWidget {
  const ClubList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeClubsBloc, HomeClubsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.clubsStatus.maybeWhen(success: (clubs) {
          return Scaffold(
            backgroundColor: kBackgroundColor,
            body: ListView.builder(
                itemCount: clubs.length,
                itemBuilder: (context, index) {
                  final club = clubs[index];
                  return ClubListItem(
                    name: club.username,
                    description: club.profileData?.bio ?? '',
                    imageUrl: club.profileData?.avatar ?? kDefaultImageUrl,
                    onPressed: () {
                      context.router.navigateNamed('/club/${club.id}');
                    },
                  );
                }),
          );
        }, loading: () {
          return const Scaffold(body: Center(child: CircularLoader()));
        }, orElse: () {
          return const SizedBox();
        });
      },
    );
  }
}
