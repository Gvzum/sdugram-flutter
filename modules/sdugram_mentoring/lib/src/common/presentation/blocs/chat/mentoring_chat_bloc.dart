import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_mentees_use_case.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat/mentoring_chat_event.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat/mentoring_chat_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class MentoringChatBloc extends Bloc<MentoringChatEvent, MentoringChatState> {
  final FetchMenteesUseCase _fetchArticlesUseCase;

  MentoringChatBloc(
    this._fetchArticlesUseCase,
  ) : super(const MentoringChatState()) {
    _setupHandlers();
    add(MentoringChatStarted());
  }

  void _setupHandlers() {
    on<MentoringChatStarted>(_onFetchMentees);
  }

  Future<void> _onFetchMentees(
    MentoringChatStarted event,
    Emitter<MentoringChatState> emit,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final userId = prefs.getInt('userId');
    if (userId == null) {
      return;
    }
    emit(state.copyWith(mentoringStatus: const MentoringChatLoading()));
    final result = await _fetchArticlesUseCase(userId);

    final mentors = result.value;

    if (mentors == null || mentors.isEmpty) {
      emit(state.copyWith(
          mentoringStatus: const MentoringChatEmptySuccess()));
      return;
    }

    emit(state.copyWith(mentoringStatus: MentoringChatSuccess(mentors)));
  }
}
