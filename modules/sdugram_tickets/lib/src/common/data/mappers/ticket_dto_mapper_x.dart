import 'package:sdugram_tickets/src/common/data/dtos/ticket_dto.dart';
import 'package:sdugram_tickets/src/common/domain/models/ticket_model.dart';

extension TicketDtoMapperX on TicketDto {
  TicketModel toModel() => TicketModel(
        paymentStatus: paymentStatus,
        event: event,
        orderId: orderId,
        user: user,
        qrImage: qrImage,
      );
}
