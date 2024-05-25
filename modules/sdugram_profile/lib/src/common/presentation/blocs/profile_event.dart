sealed class ProfileEvent {}

class ProfileStarted extends ProfileEvent {}

class ProfileOkPressed extends ProfileEvent {
  final int id;
  final String letter;

  ProfileOkPressed({required this.id, required this.letter});
}

class ProfileSendRequestPressed extends ProfileEvent {
  final String letter;
  final String occupation;
  final String university;
  final String company;
  final int year;

  ProfileSendRequestPressed(
      {required this.letter,
      required this.occupation,
      required this.university,
      required this.company,
      required this.year});
}
