import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class QRCodePopover extends StatelessWidget {
  final String qrImage;
  final String title;
  final String date;

  const QRCodePopover({
    super.key,
    required this.qrImage,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Event'),
          Text(title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins')),
          const Text('Time'),
          Text(date,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins')),
          const SizedBox(
            height: 16,
          ),
          Image.network(qrImage),
          const SizedBox(
            height: 16,
          ),
          SduButton.primary(
            label: 'Close',
            size: SduButtonSize.first,
            onPressed: () => context.router.popForced(),
          )
        ],
      ),
    );
  }
}
