import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/domain/use_cases/get_login_token_use_case.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/login_bloc/login_event.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/login_bloc/login_state.dart';
import 'package:sdugram_core/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLoginTokenUseCase _getLoginTokenUseCase;
  final FetchUserDataUseCase _fetchUserDataUseCase;

  LoginBloc(this._getLoginTokenUseCase, this._fetchUserDataUseCase)
      : super(LoginInitial()) {
    _setupHandlers();
    // add(LoginButtonPressed());
  }

  void _setupHandlers() {
    on<LoginButtonPressed>(_onFetchAll);
  }

  Future<void> _onFetchAll(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    await _onFetchLoginToken(event, emit);
    await _onFetchUserData(event, emit);
  }

  Future<void> _onFetchUserData(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isGuest', false);
    prefs.setBool('isMentor', false);

    final result = await _fetchUserDataUseCase(null);

    final user = result.value;

    if (user == null) {
      emit(LoginFailure(message: result.failureOrDefault.message));
      return;
    }
    prefs.setInt('userId', user.id);
    prefs.setBool('isGuest', user.profileType == 'guest');
    prefs.setBool(
        'isMentor',
        user.profileType == 'mentor-guest' ||
            user.profileType == 'mentor-student');
  }

  Future<void> _onFetchLoginToken(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    final result = await _getLoginTokenUseCase(
        LoginParams(username: event.username, password: event.password));

    final login = result.value;

    if (login == null) {
      emit(LoginFailure(message: result.failureOrDefault.message));
      return;
    }

    emit(LoginSuccess());
  }
}
