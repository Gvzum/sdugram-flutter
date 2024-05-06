import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';
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
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return const ClubListItem(
              name: 'name',
              description: 'description',
              imageUrl: 'imageUrl',
            );
          }),
    );
  }
}
