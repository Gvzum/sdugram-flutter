sealed class MentoringEvent {}

class MentoringStarted extends MentoringEvent {}

class MentoringOkPressed extends MentoringEvent {
  final int id;
  final String letter;

  MentoringOkPressed({required this.id, required this.letter});
}
