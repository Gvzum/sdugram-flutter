import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';

class StudentCardView extends StatefulWidget {
  const StudentCardView({super.key, required this.mentee});

  final MenteeRequestModel mentee;

  @override
  State<StudentCardView> createState() => _MentorshipCardState();
}

class _MentorshipCardState extends State<StudentCardView> {
  late TextEditingController letterController;

  @override
  void initState() {
    super.initState();
    letterController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final name = widget.mentee.mentee.firstName ?? 'User';
    return Card.filled(
      color: kSecondaryColor,
      margin: const EdgeInsets.all(16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
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
                      widget.mentee.mentee.profileData?.avatar ??
                          kDefaultImageUrl),
                  radius: 40,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$name ${widget.mentee.mentee.lastName}',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.mentee.mentee.profileData?.occupation ?? '',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.mentee.mentee.profileData?.university ?? '',
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
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Cover letter',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                widget.mentee.mentee.profileData?.bio ?? '',
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                ),
              ),
            ),
            SduButtonCell.row(
              primaryLabel: 'Apply',
              onPrimaryPressed: () {
                showAlert(
                  context,
                  title: 'Do you want apply student to mentoring?',
                  description: '',
                  buttonLabel: 'OK',
                  onPressed: () {
                    context.read<MentoringRequestBloc>().add(
                        MentoringRequestApplyPressed(id: widget.mentee.id));
                  },
                );
              },
              secondaryLabel: 'Decline',
              onSecondaryPressed: () {
                showAlert(
                  context,
                  title: 'Do you want to decline this student from mentoring?',
                  description: '',
                  buttonLabel: 'OK',
                  onPressed: () {
                    context.read<MentoringRequestBloc>().add(
                        MentoringRequestDeclinePressed(id: widget.mentee.id));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
