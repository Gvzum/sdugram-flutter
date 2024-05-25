import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_profile/src/common/domain/models/create_mentor_request_model.dart';
import 'package:sdugram_profile/src/common/domain/use_cases/create_mentor_use_case.dart';
import 'package:sdugram_profile/src/common/presentation/blocs/profile_event.dart';
import 'package:sdugram_profile/src/common/presentation/blocs/profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FetchUserDataUseCase _fetchUserDataUseCase;
  final CreateMentorUseCase _createMentorUseCase;

  ProfileBloc(this._fetchUserDataUseCase, this._createMentorUseCase)
      : super(const ProfileState()) {
    _setupHandlers();
    add(ProfileStarted());
  }

  void _setupHandlers() {
    on<ProfileStarted>(_onFetchUserData);
    on<ProfileSendRequestPressed>(_onCreateRequest);
  }

  Future<void> _onFetchUserData(
    ProfileStarted event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(profileStatus: const ProfileLoading()));

    final result = await _fetchUserDataUseCase(null);

    final user = result.value;

    if (user == null) {
      emit(state.copyWith(
          profileStatus: ProfileFailure(result.failureOrDefault)));
      return;
    }
    emit(state.copyWith(profileStatus: ProfileSuccess(user)));
  }

  Future<void> _onCreateRequest(
    ProfileSendRequestPressed event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(navigation: const ProfileNavigationLoading()));

    final result = await _createMentorUseCase(CreateMentorRequestModel(
      coverLetter: event.letter,
      occupation: event.occupation,
      university: event.university,
      company: event.company,
      yearExperience: event.year,
    ));

    if (result.failure == null) {
      emit(state.copyWith(
          navigation: ProfileNavigationFailure(result.failureOrDefault)));
      return;
    }
    emit(state.copyWith(navigation: const ProfileNavigationCreateSuccess()));
  }
}
