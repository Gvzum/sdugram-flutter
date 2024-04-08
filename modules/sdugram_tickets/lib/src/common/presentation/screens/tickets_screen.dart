import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_tickets/src/common/presentation/screens/active_tickets_screen.dart';
import 'package:sdugram_tickets/src/common/presentation/screens/history_screen.dart';

@RoutePage()
class TicketsScreen extends StatefulWidget {
  const TicketsScreen({super.key});

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const SduInputSearch(),
        backgroundColor: kBackgroundColor,
      ),
      body: const SduSegmentedControlTab(
        options: [
          TabOption(title: 'All mentors', view: ActiveTicketScreen()),
          TabOption(title: 'My mentors', view: HistoryScreen())
        ],
      ),
    );
  }
}
