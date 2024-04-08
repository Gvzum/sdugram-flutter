import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class AllMentorsScreen extends StatelessWidget {
  const AllMentorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MentorshipCard(),
        MentorshipCard()
      ], // Add as many cards as you need
    );
  }
}

class MentorshipCard extends StatelessWidget {
  const MentorshipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: kSecondaryColor,
      margin: EdgeInsets.all(10),
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
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150'),
                  radius: 40,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Askar Aitulov',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Fullstack developer',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Yandex.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(Icons.more_vert),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'I learned a lot during our mentorship; I was troubled about how I could have an edge in the industry as a career shifter with less than a year in UX design, and she helped me understand how I can utilize the skills I gained from my previous work experience in UX Design. I am grateful to her for everything she has shared with me.',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: kSecondaryPressedButtonColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Experience',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: kDefaultTextColor,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                '2 years',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'University',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: kDefaultTextColor,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                'Suleyman Demirel University',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontFamily: 'Poppins'),
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
                      onPressed: () {},
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
