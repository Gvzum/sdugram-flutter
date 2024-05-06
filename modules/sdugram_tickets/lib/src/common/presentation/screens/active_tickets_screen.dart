import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class ActiveTicketScreen extends StatelessWidget {
  const ActiveTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        EventTicketCard(),
        EventTicketCard(),

      ],
    );
  }
}

class EventTicketCard extends StatelessWidget {
  const EventTicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: 54,
              height: 20,
              decoration: const BoxDecoration(
                color: kBackgroundColor, //// Change the color as needed
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://via.placeholder.com/400x200',
                    // Replace with actual image URL
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Open microphone',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins')),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Enjoy your favorite dish and a lovely your friends and family and have a great time',
                          style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                        ),
                      ),
                      DottedLine(dashColor: kTextColor, dashLength: 5,dashGapLength: 5,),
                      SizedBox(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Name',
                                          style: TextStyle(
                                              color: kDefaultTextColor,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Aziza Khamzayeva',
                                          style: TextStyle(
                                              color: kMainTextColor,
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Date',
                                          style: TextStyle(
                                              color: kDefaultTextColor,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Nov 15 2024 • 09:00',
                                          style: TextStyle(
                                              color: kMainTextColor,
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Order Number',
                                          style: TextStyle(
                                              color: kDefaultTextColor,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('CLD09738PL',
                                          style: TextStyle(
                                              color: kMainTextColor,
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Price',
                                          style: TextStyle(
                                              color: kDefaultTextColor,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Free',
                                          style: TextStyle(
                                              color: kMainTextColor,
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
