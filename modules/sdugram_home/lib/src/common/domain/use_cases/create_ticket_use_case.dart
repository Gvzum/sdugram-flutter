import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/create_ticket_behavior.dart';
import 'package:sdugram_home/src/common/domain/models/create_ticket.dart';

@injectable
class CreateTicketUseCase implements Callable<int, CreateTicket> {
  final CreateTicketBehavior _fetchArticlesBehavior;

  CreateTicketUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<CreateTicket>> call(int event) {
    return _fetchArticlesBehavior.createTicket(
      event: event,
    );
  }
}
