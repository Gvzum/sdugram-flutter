import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_tickets/src/common/domain/behaviors/fetch_tickets_behavior.dart';
import 'package:sdugram_tickets/src/common/domain/models/ticket_model.dart';

@injectable
class FetchTicketsUseCase implements Callable<String, List<TicketModel>> {
  final FetchTicketsBehavior _fetchArticlesBehavior;

  FetchTicketsUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<List<TicketModel>>> call(String status) {
    return _fetchArticlesBehavior.fetchTickets(status: status);
  }
}
