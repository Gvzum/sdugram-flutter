import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MentoringScreen extends StatelessWidget {
  const MentoringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentoring'),
      ),
      body: const Center(
          child: Text(
            'Mentoring',
            style: TextStyle(fontSize: 40, color: Colors.red),
          )),
    );
  }
}
