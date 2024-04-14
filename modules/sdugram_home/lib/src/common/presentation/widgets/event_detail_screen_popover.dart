
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class EventDetailScreenPopover extends StatelessWidget {
  const EventDetailScreenPopover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      SizedBox(
                        // Assuming the image is a network image
                        height: 200.0, // Set image height
                        width: double.infinity,
                        // Assuming the image is a network image
                        child: AssetsGen.images.headBg.image(fit: BoxFit.cover),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Open microphone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Enjoy your favorite dish and a lovely your friends and family and have a great time Enjoy your favorite dish and a lovely your friends and family and have a great time',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: <Widget>[
                              Chip(label: Text('music'),),
                              SizedBox(width: 8.0),
                              Chip(label: Text('dance')),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.calendar_today),
                          title: Text('Nov 15 2024 • 09:00'),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('Red hall'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Enjoy your favorite dish and a lovely your friends and family and have a great time Enjoy your favorite dish and a lovely your friends and family and have a great time',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 16.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 80,
            width: double.infinity,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        '1 ticket',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '2 890 T',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SduButton.primary(
                  label: 'Buy ticket',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
