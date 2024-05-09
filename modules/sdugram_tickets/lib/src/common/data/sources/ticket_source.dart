import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:sdugram_core/data.dart';
import 'package:sdugram_tickets/src/common/data/dtos/ticket_dto.dart';

part 'ticket_source.g.dart';

@RestApi()
abstract class TicketSource {
  factory TicketSource(
    Dio dio, {
    String baseUrl,
  }) = _TicketSource;

  @GET('/integration/blog/ticket/')
  Future<BaseListResponseDto<TicketDto>> getTickets({
    @Query('status') String? status,
  });
}
