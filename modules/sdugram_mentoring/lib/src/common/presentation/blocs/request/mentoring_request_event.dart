sealed class MentoringRequestEvent {}

class MentoringRequestStarted extends MentoringRequestEvent {}

class MentoringRequestApplyPressed extends MentoringRequestEvent {
  final int id;

  MentoringRequestApplyPressed({required this.id});
}

class MentoringRequestDeclinePressed extends MentoringRequestEvent {
  final int id;

  MentoringRequestDeclinePressed({required this.id});
}

