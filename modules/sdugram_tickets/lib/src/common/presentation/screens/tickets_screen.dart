import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tickets'),
      ),
      body: const Center(
          child: Text(
            'Tickets',
            style: TextStyle(fontSize: 40, color: Colors.red),
          )),
    );
  }
}
