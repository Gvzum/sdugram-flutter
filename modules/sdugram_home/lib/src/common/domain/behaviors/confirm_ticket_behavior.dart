import 'package:sdugram_core/domain.dart';

abstract class ConfirmTicketBehavior {
  Future<Result<String>> confirmTicket({
    int? cardId,
    required String ticketId,
  });
}
