import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/delete_ticket_behavior.dart';

@injectable
class DeleteTicketUseCase implements Callable<String, void> {
  final DeleteTicketBehavior _deleteTicketBehavior;

  DeleteTicketUseCase(this._deleteTicketBehavior);

  @override
  Future<Result<void>> call(String id) {
    return _deleteTicketBehavior.deleteTicket(
      ticketId: id,
    );
  }
}
