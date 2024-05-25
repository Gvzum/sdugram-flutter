import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_profile/src/common/presentation/blocs/profile_bloc.dart';
import 'package:sdugram_profile/src/common/presentation/blocs/profile_state.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mentor Request',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 18)),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Edit',
                style: TextStyle(color: Colors.blue, fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
        body: BlocProvider(
          create: (context) => context.di<ProfileBloc>(),
          child:
              BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
            return state.profileStatus.when(
              initial: () {
                return const SizedBox.shrink();
              },
              loading: () {
                return const CircularLoader();
              },
              failure: (failure) {
                return Text(failure.message);
              },
              success: (user) {
                return ListView(
                  children: [
                    const SizedBox(height: 32),
                    CircleAvatar(
                      radius: 60,
                      child: ClipOval(
                        child: Image.network(
                          user.profileData?.avatar ?? kDefaultImageUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        '${user.firstName} ${user.lastName}',
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: Text(
                        user.profileType ?? 'Guest',
                        style: const TextStyle(
                            fontSize: 18, fontFamily: 'Poppins'),
                      ),
                    ),
                    const SizedBox(height: 32),
                    // const ProfileOption(icon: Icons.save, text: 'Saved posts'),
                    // const ProfileOption(
                    //     icon: Icons.help_outline, text: 'Help and support'),
                    // const ProfileOption(
                    //     icon: Icons.privacy_tip, text: 'Privacy policy'),
                    // const ProfileOption(
                    //     icon: Icons.info_outline,
                    //     text: 'About SDUgram',
                    //     isNew: true),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(
                          color: kButtonBackgroundColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: kPrimaryColor)),
                      child: ListTile(
                        leading: const Icon(
                          Icons.person_add,
                          color: kPrimaryColor,
                        ),
                        title: const Text(
                          'Do you want to become a mentor?',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          child: const Icon(Icons.chevron_right,
                              color: kPrimaryColor),
                        ),
                        onTap: () {
                          context.router.navigateNamed('/profile-form');
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: SduButton.primary(
                        label: 'logout',
                        size: SduButtonSize.first,
                        onPressed: () {
                          context.router.replaceNamed('/login/nothing');
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          }),
        ));
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isNew;

  const ProfileOption({
    super.key,
    required this.icon,
    required this.text,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(
          icon,
        ),
        title: Text(text),
        trailing: isNew
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'New',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            : const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {
          // Handle the action for each option
        },
      ),
    );
  }
}
