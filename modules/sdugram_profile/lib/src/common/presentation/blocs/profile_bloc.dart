import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_profile/src/common/presentation/blocs/profile_event.dart';
import 'package:sdugram_profile/src/common/presentation/blocs/profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FetchUserDataUseCase _fetchUserDataUseCase;

  ProfileBloc(this._fetchUserDataUseCase) : super(const ProfileState()) {
    _setupHandlers();
    add(ProfileStarted());
  }

  void _setupHandlers() {
    on<ProfileStarted>(_onFetchUserData);
  }

  Future<void> _onFetchUserData(
    ProfileStarted event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(profileStatus: ProfileLoading()));

    final result = await _fetchUserDataUseCase(null);

    final user = result.value;

    if (user == null) {
      emit(state.copyWith(
          profileStatus: ProfileFailure(result.failureOrDefault)));
      return;
    }
    emit(state.copyWith(profileStatus: ProfileSuccess(user)));
  }
}
