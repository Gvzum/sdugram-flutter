import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle( fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 18)),
        actions: [
          TextButton(
            onPressed: () {
              // Handle edit profile action
            },
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.blue, fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 32),
          CircleAvatar(
            radius: 56,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              'Amina Asan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'Student',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
          SizedBox(height: 32),
          ProfileOption(icon: Icons.settings, text: 'Settings'),
          ProfileOption(icon: Icons.help_outline, text: 'Help and support'),
          ProfileOption(icon: Icons.privacy_tip, text: 'Privacy policy'),
          ProfileOption(icon: Icons.info_outline, text: 'About SDUgram', isNew: true),
      Container(margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(color: kButtonBackgroundColor, borderRadius: BorderRadius.circular(12), border: Border.all(color: kPrimaryColor)),
        child: ListTile(

          leading: Icon(Icons.person_add, color: kPrimaryColor, ),
          title: Text('Do you want to become a mentor?', style: TextStyle(color: kPrimaryColor),),
          trailing:Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),

            child: Icon(Icons.chevron_right, color: kPrimaryColor),

        ),
      ),
      ),],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isNew;

  const ProfileOption({
    Key? key,
    required this.icon,
    required this.text,
    this.isNew = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
      child: ListTile(

        leading: Icon(icon, ),
        title: Text(text),
        trailing: isNew
            ? Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            'New',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
            : Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {
          // Handle the action for each option
        },
      ),
    );
  }
}