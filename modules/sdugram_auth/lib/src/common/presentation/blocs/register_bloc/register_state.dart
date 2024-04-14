import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
   @Default(false) bool isMatched,
    @Default(false) bool isFullSymbols,
    @Default(false) bool isNumber,
    @Default(false) bool isCaps,
    @Default('') String password,
    @Default('') String passwordRepeat,
    @Default(RegisterInitial()) RegisterStatus status,
  }) = _RegisterState;
}

@freezed
sealed class RegisterStatus with _$RegisterStatus {
  const factory RegisterStatus.initial() =
  RegisterInitial;

  const factory RegisterStatus.loading() =
  RegisterLoading;

  const factory RegisterStatus.failure(String message) =
  RegisterFailure;

  const factory RegisterStatus.success() =
  RegisterSuccess;
}
