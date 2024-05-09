import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_tickets/src/common/data/mappers/ticket_dto_mapper_x.dart';
import 'package:sdugram_tickets/src/common/data/sources/ticket_source.dart';
import 'package:sdugram_tickets/src/common/domain/behaviors/fetch_tickets_behavior.dart';
import 'package:sdugram_tickets/src/common/domain/models/ticket_model.dart';

@lazySingleton
class TicketService implements FetchTicketsBehavior {
  final TicketSource _homeSource;

  TicketService({required TicketSource homeSource}) : _homeSource = homeSource;

  @override
  Future<Result<List<TicketModel>>> fetchTickets(
      {required String status}) async {
    try {
      final result = await _homeSource.getTickets(status: status);
    return SuccessResult(result.results.map((e) => e.toModel()).toList());
    } on DioException catch (e) {
    return ErrorResult(e.handleError('Error occurred while fetching some data'));
    }
  }
}
