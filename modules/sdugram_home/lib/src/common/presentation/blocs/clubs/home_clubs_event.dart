sealed class HomeClubsEvent {}

class HomeClubsStarted extends HomeClubsEvent {}

class HomeClubPressed extends HomeClubsEvent {
  final String id;

  HomeClubPressed({required this.id});
}