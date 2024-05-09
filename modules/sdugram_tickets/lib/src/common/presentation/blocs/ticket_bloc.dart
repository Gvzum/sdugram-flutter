import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_tickets/src/common/domain/use_cases/fetch_tickets_use_case.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/ticket_event.dart';
import 'package:sdugram_tickets/src/common/presentation/blocs/ticket_state.dart';

@injectable
class TicketBloc extends Bloc<TicketEvent, TicketState> {
  final FetchTicketsUseCase _fetchArticlesUseCase;

  TicketBloc(this._fetchArticlesUseCase) : super(const TicketState()) {
    _setupHandlers();
    add(TicketsStarted());
  }

  void _setupHandlers() {
    on<TicketsStarted>(fetchActiveTickets);
  }

  Future<void> fetchActiveTickets(
    TicketsStarted event,
    Emitter<TicketState> emit,
  ) async {
    emit(state.copyWith(activeTicketStatus: const TicketActiveLoading()));
    final result = await _fetchArticlesUseCase('ACTIVE');

    final listArticles = result.value;

    if (listArticles == null) {
      emit(state.copyWith(
          activeTicketStatus: TicketActiveFailure(result.failureOrDefault)));
      return;
    }

    emit(state.copyWith(activeTicketStatus: TicketActiveSuccess(listArticles)));
  }
}
