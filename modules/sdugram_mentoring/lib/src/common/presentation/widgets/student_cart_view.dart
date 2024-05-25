import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentee_request_model.dart';

class StudentCardView extends StatefulWidget {
  const StudentCardView({super.key, required this.mentor});

  final MenteeRequestModel mentor;

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
                      widget.mentor.mentee.profileData?.avatar ??
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
                          '${widget.mentor.mentee.firstName} ${widget.mentor.mentee.lastName}',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.mentor.mentee.profileData?.occupation ?? '',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.mentor.mentee.profileData?.company ?? '',
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
                widget.mentor.mentee.profileData?.bio ?? '',
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
                                '${widget.mentor.mentee.profileData?.yearExperience ?? 1} years',
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
                                widget.mentor.mentee.profileData?.university ??
                                    "-",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    child: SduButton.primary(
                      label: 'Apply',
                      size: SduButtonSize.first,
                      onPressed: () {
                        showAlert(
                          context,
                          title: 'You apply the student',
                          description: '',
                          buttonLabel: 'OK',
                          onPressed: () {
                            context.router.popForced();
                          },
                          // input: TextField(
                          //   controller: letterController,
                          //   decoration: const InputDecoration(
                          //       hintText: 'Enter the letter',
                          //       hintStyle: TextStyle(
                          //           fontSize: 14, fontFamily: 'Poppins'),
                          //       contentPadding:
                          //           EdgeInsets.symmetric(horizontal: 20)),
                          // ),
                        );
                      },
                    ),
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
