import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_tickets/src/common/domain/models/ticket_model.dart';

part 'ticket_inactive_state.freezed.dart';

@freezed
class TicketInactiveState with _$TicketInactiveState {
  const factory TicketInactiveState({
    @Default(TicketInactiveInitial()) TicketInactiveStatus inactiveTicketStatus,
    @Default('') String ticketImageUrl,
  }) = _TicketInactiveState;
}


@freezed
sealed class TicketInactiveStatus with _$TicketInactiveStatus {
  const factory TicketInactiveStatus.initial() = TicketInactiveInitial;

  const factory TicketInactiveStatus.loading() = TicketInactiveLoading;

  const factory TicketInactiveStatus.failure(Failure failure) =
  TicketInactiveFailure;

  const factory TicketInactiveStatus.success(List<TicketModel> listArticles) =
  TicketInactiveSuccess;
}
