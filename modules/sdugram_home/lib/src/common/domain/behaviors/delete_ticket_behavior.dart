import 'package:sdugram_core/domain.dart';

abstract class DeleteTicketBehavior {
  Future<Result<void>> deleteTicket({
    required String ticketId,
  });
}
