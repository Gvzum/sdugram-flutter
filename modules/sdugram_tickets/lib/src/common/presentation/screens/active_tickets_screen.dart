import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_tickets/src/common/domain/models/ticket_model.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/ticket_bloc.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/ticket_event.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/ticket_state.dart';
import 'package:sdugram_tickets/src/common/presentation/widgets/qr_code_popover.dart';
import 'package:intl/intl.dart';

class ActiveTicketScreen extends StatelessWidget {
  const ActiveTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<TicketBloc>().add(TicketsStarted());
      },
      child: BlocConsumer<TicketBloc, TicketState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.activeTicketStatus.maybeWhen(success: (tickets) {
            return Scaffold(
              backgroundColor: kBackgroundColor,
              body: ListView.builder(
                  itemCount: tickets.length,
                  itemBuilder: (context, index) {
                    final ticket = tickets[index];
                    return EventTicketCard(ticket: ticket);
                  }),
            );
          }, loading: () {
            return const Scaffold(body: Center(child: CircularLoader()));
          }, orElse: () {
            return const SizedBox();
          });
        },
      ),
    );
  }
}

class EventTicketCard extends StatelessWidget {
  const EventTicketCard({super.key, required this.ticket});

  final TicketModel ticket;

  @override
  Widget build(BuildContext context) {
    final String date =
        DateFormat("MMM d yyyy HH:mm").format(ticket.event.startTime);
    return GestureDetector(
      onTap: () => _showQRCodeDialog(context,
          ticket.qrImage ?? AssetsGen.images.qr.path, ticket.event.title, date),
      child: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: 54,
                height: 20,
                decoration: const BoxDecoration(
                  color: kBackgroundColor, //// Change the color as needed
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      ticket.event.backgroundImage,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ticket.event.title,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins')),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            ticket.event.subtitle ?? '',
                            style: const TextStyle(
                                fontSize: 16, fontFamily: 'Poppins'),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const DottedLine(
                          dashColor: kTextColor,
                          dashLength: 5,
                          dashGapLength: 5,
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Name',
                                            style: TextStyle(
                                                color: kDefaultTextColor,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(ticket.user.username,
                                            style: const TextStyle(
                                                color: kMainTextColor,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Date',
                                            style: TextStyle(
                                                color: kDefaultTextColor,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(date,
                                            style: const TextStyle(
                                                color: kMainTextColor,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Order Number',
                                            style: TextStyle(
                                                color: kDefaultTextColor,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                            ticket.orderId
                                                .substring(0, 8)
                                                .toUpperCase(),
                                            style: const TextStyle(
                                                color: kMainTextColor,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Price',
                                            style: TextStyle(
                                                color: kDefaultTextColor,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                            ticket.event.price == null ||
                                                    ticket.event.price == '0'
                                                ? 'Free'
                                                : ticket.event.price!,
                                            style: const TextStyle(
                                                color: kMainTextColor,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showQRCodeDialog(
    BuildContext blocContext,
    String qrImage,
    String title,
    String date,
  ) async {
    await bccPopover(
      context: blocContext,
      pages: [
        BccPopoverPage(
          pageBuilder: (context) {
            return QRCodePopover(qrImage: qrImage, title: title, date: date);
          },
          routeName: '/',
        ),
      ],
    );
  }
}
