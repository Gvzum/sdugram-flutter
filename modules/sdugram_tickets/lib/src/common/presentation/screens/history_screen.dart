import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_tickets/src/common/domain/models/ticket_model.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/inactive/ticket_inactive_bloc.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/inactive/ticket_inactive_state.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TicketInactiveBloc, TicketInactiveState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.inactiveTicketStatus.maybeWhen(success: (tickets) {
          return Scaffold(
            backgroundColor: kBackgroundColor,
            body: ListView.builder(
                itemCount: tickets.length,
                itemBuilder: (context, index) {
                  final ticket = tickets[index];
                  return InactiveTicketCard(ticket: ticket);
                }),
          );
        }, loading: () {
          return const Scaffold(body: Center(child: CircularLoader()));
        }, orElse: () {
          return const SizedBox();
        });
      },
    );
  }
}

class InactiveTicketCard extends StatelessWidget {
  final TicketModel ticket;

  const InactiveTicketCard({
    super.key,
    required this.ticket
  });

  @override
  Widget build(BuildContext context) {
    final String date =
    DateFormat("MMM d yyyy HH:mm").format(ticket.event.startTime);
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(
                    ticket.event.backgroundImage,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 150,
                      child: Expanded(
                        child: Text(
                          ticket.event.title,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[850],
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
