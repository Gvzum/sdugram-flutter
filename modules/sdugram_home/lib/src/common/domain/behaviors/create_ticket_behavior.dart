import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/create_ticket.dart';

abstract class CreateTicketBehavior {
  Future<Result<CreateTicket>> createTicket({
    required int event,
  });
}
