
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_profile/sdugram_profile.dart';

@RoutePage()
class ProfileMentorRequestFormScreen extends StatefulWidget {
  const ProfileMentorRequestFormScreen({super.key});

  @override
  State<ProfileMentorRequestFormScreen> createState() =>
      _ProfileMentorRequestFormScreenState();
}

class _ProfileMentorRequestFormScreenState
    extends State<ProfileMentorRequestFormScreen> {
  late InputController coverLetterController;
  late InputController occupationController;
  late InputController yearController;
  late InputController universityController;
  late InputController companyController;

  @override
  void initState() {
    coverLetterController = InputController();
    occupationController = InputController();
    yearController = InputController();
    universityController = InputController();
    companyController = InputController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => context.di<ProfileBloc>(),
        child: BlocConsumer<ProfileBloc, ProfileState>(
            listener: (blocContext, state) {
          state.navigation.whenOrNull(createSuccess: () {
            showAlert(context, title: "Send Successfully", buttonLabel: 'Back',
                onPressed: () {
              context.router.popForced();
              context.router.replaceNamed('/sdugram/profile');
            });
          });
        }, builder: (blocContext, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Profile',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            body: Column(
              children: [
                SduInput(
                  labelText: 'University',
                  controller: universityController,
                ),
                SduInput(
                  labelText: 'Company',
                  controller: companyController,
                ),
                SduInput(
                  labelText: 'Occupation',
                  controller: occupationController,
                ),
                SduInput(
                  labelText: 'Year Experience',
                  controller: yearController,
                ),
                SduInput(
                  labelText: 'Cover Letter',
                  controller: coverLetterController,
                ),
                SduButton.primary(
                  label: 'Send request',
                  size: SduButtonSize.first,
                  onPressed: () {
                    blocContext
                        .read<ProfileBloc>()
                        .add(ProfileSendRequestPressed(
                            letter: coverLetterController.text,
                            occupation: occupationController.text,
                            university: universityController.text,
                            company: companyController.text,
                            year: int.parse(
                              (yearController.text),
                            )));
                  },
                ),
              ],
            ),
          );
        }));
  }
}

void showAlert(
  BuildContext context, {
  required String title,
  required String buttonLabel,
  required Function()? onPressed,
  Function()? onPressedCancel,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SduAlert(
        title: title,
        buttonLabel: buttonLabel,
        onPressed: onPressed,
        onPressedCancel: onPressedCancel,
        description: '',
      );
    },
  );
}
