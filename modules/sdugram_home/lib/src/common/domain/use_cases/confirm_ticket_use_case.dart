import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/confirm_ticket_behavior.dart';

@injectable
class ConfirmTicketUseCase implements Callable<ConfirmTicketParams, String> {
  final ConfirmTicketBehavior _confirmTicketBehavior;

  ConfirmTicketUseCase(this._confirmTicketBehavior);

  @override
  Future<Result<String>> call(ConfirmTicketParams params) {
    return _confirmTicketBehavior.confirmTicket(
        ticketId: params.ticketId, cardId: params.cardId);
  }
}

class ConfirmTicketParams {
  final String ticketId;
  final int? cardId;

  ConfirmTicketParams({required this.ticketId, this.cardId});
}
