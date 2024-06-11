import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/mentoring_bloc.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/mentoring_event.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/mentoring_state.dart';

class AllMentorsScreen extends StatelessWidget {
  const AllMentorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MentoringBloc, MentoringState>(
      listener: (context, state) {
        state.navigation.whenOrNull(
          loading: () {
            SduOverlayLoader().show(context);
          },
          createSuccess: () {
            SduOverlayLoader().hide();
            context.router.popForced();
          },
        );
      },
      builder: (context, state) {
        return state.mentoringStatus.maybeWhen(success: (mentors) {
          return Scaffold(
            backgroundColor: kBackgroundColor,
            body: ListView.builder(
                itemCount: mentors.length,
                itemBuilder: (context, index) {
                  final mentor = mentors[index];
                  return MentorshipCard(
                    mentor: mentor,
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

class MentorshipCard extends StatefulWidget {
  const MentorshipCard({super.key, required this.mentor});

  final UserProfileModel mentor;

  @override
  State<MentorshipCard> createState() => _MentorshipCardState();
}

class _MentorshipCardState extends State<MentorshipCard> {
  late TextEditingController letterController;

  @override
  void initState() {
    super.initState();
    letterController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: kSecondaryColor,
      margin: const EdgeInsets.all(10),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      widget.mentor.profileData?.avatar ?? kDefaultImageUrl),
                  radius: 40,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${widget.mentor.firstName} ${widget.mentor.lastName}',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.mentor.profileData?.occupation ?? '',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.mentor.profileData?.company ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(Icons.more_vert),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                widget.mentor.profileData?.bio ?? '',
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: kSecondaryPressedButtonColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 200,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Experience',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: kDefaultTextColor,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                '${widget.mentor.profileData?.yearExperience ?? 1} years',
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'University',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: kDefaultTextColor,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                widget.mentor.profileData?.university ?? "-",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SduButton.primary(
                    label: 'Apply',
                    size: SduButtonSize.first,
                    onPressed: () {
                      showAlert(
                        context,
                        title:
                            'Do you want to become a student of this mentor?',
                        description: 'Send the cover letter to mentor',
                        buttonLabel: 'OK',
                        onPressed: () {
                          context.read<MentoringBloc>().add(
                              MentoringOkPressed(
                                  id: widget.mentor.id,
                                  letter: letterController.text));
                        },
                        input: TextField(
                          controller: letterController,
                          decoration: const InputDecoration(
                              hintText: 'Enter the letter',
                              hintStyle: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20)),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showAlert(
  BuildContext context, {
  required String title,
  required String description,
  required String buttonLabel,
   Widget? input,
  required Function()? onPressed,
  Function()? onPressedCancel,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SduAlert(
        title: title,
        description: description,
        buttonLabel: buttonLabel,
        onPressed: onPressed,
        onPressedCancel: onPressedCancel,
        input: input,
      );
    },
  );
}
