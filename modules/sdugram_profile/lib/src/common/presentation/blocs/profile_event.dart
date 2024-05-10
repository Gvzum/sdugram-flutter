sealed class ProfileEvent {}

class ProfileStarted extends ProfileEvent {}

class ProfileOkPressed extends ProfileEvent {
  final int id;
  final String letter;

  ProfileOkPressed({required this.id, required this.letter});
}
