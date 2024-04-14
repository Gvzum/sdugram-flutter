import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class CheckingPasswordText extends StatelessWidget {
  const CheckingPasswordText(
      {super.key, required this.text, required this.isCorrect});

  final String text;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Icon(
            isCorrect ? Icons.check : Icons.close,
            color: isCorrect ? Colors.green : Colors.red,
          ),
          SizedBox(width: 4,),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: isCorrect ? kMainTextColor : kDefaultTextColor),
          )
        ],
      ),
    );
  }
}
