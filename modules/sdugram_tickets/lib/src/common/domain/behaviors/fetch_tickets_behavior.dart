import 'package:sdugram_core/domain.dart';
import 'package:sdugram_tickets/src/common/domain/models/ticket_model.dart';

abstract class FetchTicketsBehavior {
  Future<Result<List<TicketModel>>> fetchTickets({required String status});
}
