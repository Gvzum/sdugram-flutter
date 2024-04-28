sealed class HomeEvent {}

class HomeStarted extends HomeEvent {}

class HomeEventPressed extends HomeEvent {
  final int id;

  HomeEventPressed({required this.id});
}

class HomeBuyPressed extends HomeEvent {}

class HomeAddCardPressed extends HomeEvent {
  final String cardNumber;
  final String cardholderName;
  final int expirationMonth;
  final int expirationYear;

  HomeAddCardPressed(
      {required this.cardNumber,
      required this.cardholderName,
      required this.expirationMonth,
      required this.expirationYear});
}

// class LoginButtonPressed extends LoginEvent {
//   final String username;
//   final String password;
//
//   LoginButtonPressed({required this.username, required this.password});
// }
