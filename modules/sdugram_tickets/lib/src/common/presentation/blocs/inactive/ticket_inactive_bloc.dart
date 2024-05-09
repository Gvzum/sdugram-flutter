import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_tickets/src/common/domain/use_cases/fetch_tickets_use_case.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/inactive/ticket_inactive_event.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/inactive/ticket_inactive_state.dart';

@injectable
class TicketInactiveBloc
    extends Bloc<TicketInactiveEvent, TicketInactiveState> {
  final FetchTicketsUseCase _fetchArticlesUseCase;

  TicketInactiveBloc(this._fetchArticlesUseCase)
      : super(const TicketInactiveState()) {
    _setupHandlers();
    add(TicketsInactiveStarted());
  }

  void _setupHandlers() {
    on<TicketsInactiveStarted>(fetchActiveTickets);
  }

  Future<void> fetchActiveTickets(
    TicketsInactiveStarted event,
    Emitter<TicketInactiveState> emit,
  ) async {
    emit(state.copyWith(inactiveTicketStatus: const TicketInactiveLoading()));
    final result = await _fetchArticlesUseCase('PASSED');

    final listArticles = result.value;

    if (listArticles == null) {
      emit(state.copyWith(
          inactiveTicketStatus:
              TicketInactiveFailure(result.failureOrDefault)));
      return;
    }

    emit(state.copyWith(
        inactiveTicketStatus: TicketInactiveSuccess(listArticles)));
  }
}
