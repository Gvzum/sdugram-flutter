import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentor_request_model.dart';
import 'package:sdugram_mentoring/src/common/domain/use_cases/create_request_to_mentor_use_case.dart';
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_mentors_use_case.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/mentoring_event.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/mentoring_state.dart';

@injectable
class MentoringBloc extends Bloc<MentoringEvent, MentoringState> {
  final FetchMentorsUseCase _fetchArticlesUseCase;
  final CreateRequestToMentorUseCase _createRequestToMentorUseCase;

  MentoringBloc(
    this._fetchArticlesUseCase,
    this._createRequestToMentorUseCase,
  ) : super(const MentoringState()) {
    _setupHandlers();
    add(MentoringStarted());
  }

  void _setupHandlers() {
    on<MentoringStarted>(_onFetchMentors);
    on<MentoringOkPressed>(_onCreateRequest);
  }

  Future<void> _onFetchMentors(
    MentoringStarted event,
    Emitter<MentoringState> emit,
  ) async {
    emit(state.copyWith(mentoringStatus: const MentoringLoading()));
    final result = await _fetchArticlesUseCase('ACTIVE');

    final mentors = result.value;

    if (mentors == null) {
      emit(state.copyWith(
          mentoringStatus: MentoringFailure(result.failureOrDefault)));
      return;
    }

    emit(state.copyWith(mentoringStatus: MentoringSuccess(mentors)));
  }

  Future<void> _onCreateRequest(
    MentoringOkPressed event,
    Emitter<MentoringState> emit,
  ) async {
    emit(state.copyWith(navigation: const MentoringNavigationLoading()));
    final result = await _createRequestToMentorUseCase(
        MentorRequestModel(mentor: event.id, coverLetter: event.letter));

    if (result.failure != null) {
      emit(state.copyWith(
          navigation: MentoringNavigationFailure(result.failureOrDefault)));
    }

    emit(state.copyWith(navigation: const MentoringNavigationCreateSuccess()));
  }
}
