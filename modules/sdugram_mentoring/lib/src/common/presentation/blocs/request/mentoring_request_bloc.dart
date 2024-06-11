import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/apply_mentees_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_mentees_use_case.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/request/mentoring_request_event.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/request/mentoring_request_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class MentoringRequestBloc
    extends Bloc<MentoringRequestEvent, MentoringRequestState> {
  final FetchMenteesUseCase _fetchMenteesUseCase;
  final ApplyMenteesBehavior _applyMenteesBehavior;

  MentoringRequestBloc(
    this._fetchMenteesUseCase,
    this._applyMenteesBehavior,
  ) : super(const MentoringRequestState()) {
    _setupHandlers();
    add(MentoringRequestStarted());
  }

  void _setupHandlers() {
    on<MentoringRequestStarted>(_onFetchMentees);
    on<MentoringRequestApplyPressed>(_onApply);
    on<MentoringRequestDeclinePressed>(_onDecline);
  }

  Future<void> _onFetchMentees(
    MentoringRequestStarted event,
    Emitter<MentoringRequestState> emit,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final userId = prefs.getInt('userId');
    if (userId == null) {
      return;
    }
    emit(state.copyWith(mentoringStatus: const MentoringRequestLoading()));
    final result = await _fetchMenteesUseCase(userId);

    final mentees = result.value;

    if (mentees == null) {
      emit(state.copyWith(
          mentoringStatus: MentoringRequestFailure(result.failureOrDefault)));
      return;
    }

    // if (mentees..isNotEmpty) {
    //   emit(state.copyWith(
    //       mentoringStatus: const MentoringRequestEmptySuccess()));
    //   return;
    // }

    emit(state.copyWith(mentoringStatus: MentoringRequestSuccess(mentees)));
  }

  Future<FutureOr<void>> _onApply(
    MentoringRequestApplyPressed event,
    Emitter<MentoringRequestState> emit,
  ) async {
    await _applyMenteesBehavior.applyMentees(
        id: event.id, requestStatus: 'APPROVED');
    emit(state.copyWith(
        navigation: const MentoringRequestNavigationSendRequestSuccess()));
    add(MentoringRequestStarted());
  }

  Future<FutureOr<void>> _onDecline(
    MentoringRequestDeclinePressed event,
    Emitter<MentoringRequestState> emit,
  ) async {
    await _applyMenteesBehavior.applyMentees(
        id: event.id, requestStatus: 'DECLINED');
    emit(state.copyWith(
        navigation: const MentoringRequestNavigationSendRequestSuccess()));
    add(MentoringRequestStarted());
  }
}
