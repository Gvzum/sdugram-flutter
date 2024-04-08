import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class ActiveTicketScreen extends StatelessWidget {
  const ActiveTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // EventTicketCard(),
        // EventTicketCard(), // Repeat the EventTicketCard for each list item
        // Add more EventTicketCards as necessary
      ],
    );
  }
}

class EventTicketCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Image.network(
                  'https://via.placeholder.com/400x200', // Replace with actual image URL
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Open microphone', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Enjoy your favorite dish and a lovely your friends and family and have a great time',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name', style: TextStyle(color: Colors.grey)),
                            Text('Aziza Khamzayeva'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date', style: TextStyle(color: Colors.grey)),
                            Text('Nov 15 2024 • 09:00'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order Number', style: TextStyle(color: Colors.grey)),
                            Text('CLD09738PL'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Price', style: TextStyle(color: Colors.grey)),
                            Text('Free'),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Scan your barcode at the entry'),
                      ),
                    ),
                    AssetsGen.images.barcode.svg(height: 62, width: double.infinity)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}