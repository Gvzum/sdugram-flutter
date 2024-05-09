import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/inactive/ticket_inactive_bloc.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/ticket_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => context.di<TicketBloc>()),
        BlocProvider(create: (_) => context.di<TicketInactiveBloc>()),
      ],
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: const SduInputSearch(),
          backgroundColor: kBackgroundColor,
        ),
        body: const SduSegmentedControlTab(
          options: [
            TabOption(title: 'Active tickets', view: ActiveTicketScreen()),
            TabOption(title: 'History', view: HistoryScreen())
          ],
        ),
      ),
    );
  }
}
