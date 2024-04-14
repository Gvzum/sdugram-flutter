import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_auth/src/common/domain/use_cases/register_user_use_case.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/register_bloc/register_event.dart';
import 'package:sdugram_auth/src/common/presentation/blocs/register_bloc/register_state.dart';
import 'package:sdugram_core/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUserUseCase _registerUseCase;

  RegisterBloc(this._registerUseCase) : super(const RegisterState()) {
    _setupHandlers();
  }

  void _setupHandlers() {
    on<RegisterButtonPressed>(_onFetchLoginToken);
    on<RegisterPasswordEntered>(_onPasswordEntered);
  }

  Future<void> _onFetchLoginToken(
    RegisterButtonPressed event,
    Emitter<RegisterState> emit,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    emit(state.copyWith(status: const RegisterLoading()));

    final result = await _registerUseCase(RegisterParams(
        username: event.username,
        password: event.password,
        email: event.email,
        passwordRepeat: event.passwordRepeat));

    if (result.failure != null) {
      emit(state.copyWith(
          status: RegisterFailure(result.failureOrDefault.message)));
      return;
    }

    await prefs.setBool(event.username, true);
    emit(state.copyWith(status: const RegisterSuccess()));
  }

  FutureOr<void> _onPasswordEntered(
    RegisterPasswordEntered event,
    Emitter<RegisterState> emit,
  ) {
    final password = event.password ??
        state.password; // Use existing password if not provided
    final passwordRepeat = event.passwordRepeat ??
        state.passwordRepeat; // Use existing repeat if not provided

    bool isMatched = password == passwordRepeat;
    bool isFull = password.length >= 8;
    bool isNumber = password.contains(RegExp(r'[0-9]'));
    bool isCaps = password.contains(RegExp(r'[A-Z]'));
    emit(state.copyWith(
      password: password,
      passwordRepeat: passwordRepeat,
      isMatched: isMatched,
      isFullSymbols: isFull,
      isNumber: isNumber,
      isCaps: isCaps,
    ));
  }
}
