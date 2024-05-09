import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_tickets/src/common/domain/models/ticket_model.dart';

part 'ticket_state.freezed.dart';

@freezed
class TicketState with _$TicketState {
  const factory TicketState({
    @Default(TicketActiveInitial()) TicketActiveStatus activeTicketStatus,
    @Default('') String ticketImageUrl,
  }) = _TicketState;
}

@freezed
sealed class TicketActiveStatus with _$TicketActiveStatus {
  const factory TicketActiveStatus.initial() = TicketActiveInitial;

  const factory TicketActiveStatus.loading() = TicketActiveLoading;

  const factory TicketActiveStatus.failure(Failure failure) =
      TicketActiveFailure;

  const factory TicketActiveStatus.success(List<TicketModel> listArticles) =
      TicketActiveSuccess;
}
