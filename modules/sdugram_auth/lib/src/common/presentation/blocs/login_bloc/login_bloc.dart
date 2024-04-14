import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/domain/use_cases/get_login_token_use_case.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/login_bloc/login_event.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/login_bloc/login_state.dart';
import 'package:sdugram_core/domain.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLoginTokenUseCase _getLoginTokenUseCase;

  LoginBloc(this._getLoginTokenUseCase) : super(LoginInitial()) {
    _setupHandlers();
    // add(LoginButtonPressed());
  }

  void _setupHandlers() {
    on<LoginButtonPressed>(_onFetchLoginToken);
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
