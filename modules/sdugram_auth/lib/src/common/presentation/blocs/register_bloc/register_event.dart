sealed class RegisterEvent {}

class RegisterStarted extends RegisterEvent {}

class RegisterPasswordEntered extends RegisterEvent {
  final String? password;
  final String? passwordRepeat;

  RegisterPasswordEntered({this.password, this.passwordRepeat});
}

class RegisterButtonPressed extends RegisterEvent {
  final String username;
  final String password;
  final String email;
  final String passwordRepeat;

  RegisterButtonPressed(
      {required this.username,
      required this.password,
      required this.email,
      required this.passwordRepeat});
}
