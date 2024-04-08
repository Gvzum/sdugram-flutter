import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

@RoutePage()
class ClubsScreen extends StatelessWidget {
  const ClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ClubList(),
    );
  }
}

class ClubList extends StatelessWidget {
  final List<Club> clubs = [
    Club(name: 'it.club', description: 'Welcome to the IT Club, where techn...', imageUrl: 'assets/it_club.jpg'),
    Club(name: 'statistics.club', description: 'Numbers tell a story, and in the Statis...', imageUrl: 'assets/statistics_club.jpg'),
    Club(name: 'dance.club', description: 'Get ready to move and groove with th...', imageUrl: 'assets/dance_club.jpg'),
    Club(name: 'language_club', description: 'Get ready to move and groove with th...', imageUrl: 'assets/language_club.jpg'),
    // Add more clubs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: clubs.map((Club club) => ClubListItem(club: club)).toList(),
    );
  }
}

class ClubListItem extends StatelessWidget {
  final Club club;

  const ClubListItem({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: ListTile(
        tileColor: kSecondaryColor,
        leading: const CircleAvatar(
          backgroundImage: NetworkImage('https://via.placeholder.com/40'), // Assumes local assets, replace with network image if needed
        ),
        title: Text(club.name),
        subtitle: Text(club.description),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          // Handle the tap event, for example, navigate to the club detail screen
        },
      ),
    );
  }
}

class Club {
  String name;
  String description;
  String imageUrl;

  Club({required this.name, required this.description, required this.imageUrl});
}