import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class SduAlert extends StatelessWidget {
  final String title;
  final String description;
  final String buttonLabel;
  final Function()? onPressed;
  final Function()? onPressedCancel;

  const SduAlert(
      {super.key,
      required this.title,
      required this.description,
      required this.buttonLabel,
      required this.onPressed,
      this.onPressedCancel});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        constraints: const BoxConstraints(maxWidth: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kAlertFillColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 24.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                  fontFamily: 'Poppins'),
            ),
            const SizedBox(height: 10.0),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: onPressedCancel ?? () => Navigator.pop(context),
                  child: const Text(
                    'Отмена',
                    style: TextStyle(color: Colors.grey, fontFamily: 'Poppins'),
                  ),
                ),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    buttonLabel,
                    style: const TextStyle(
                        color: Colors.black, fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static void show(
    BuildContext context, {
    required String title,
    required String description,
    required String buttonLabel,
    required Function()? onPressed,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SduAlert(
          title: title,
          description: description,
          buttonLabel: '',
          onPressed: () {},
        );
      },
    );
  }
}
