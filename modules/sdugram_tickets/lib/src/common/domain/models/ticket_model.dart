import 'package:sdugram_core/domain.dart';
import 'package:sdugram_tickets/src/common/domain/models/event_ticket_model.dart';

class TicketModel {
  final String paymentStatus;
  final EventTicketModel event;
  final String orderId;
  final UserModel user;
  final String? qrImage;

  TicketModel(
      {required this.paymentStatus,
      required this.event,
      required this.orderId,
      required this.user,
      required this.qrImage});
}
