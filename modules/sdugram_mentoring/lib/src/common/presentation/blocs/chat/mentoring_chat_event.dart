sealed class MentoringChatEvent {}

class MentoringChatStarted extends MentoringChatEvent {}

class MentoringChatOkPressed extends MentoringChatEvent {
  final int id;

  MentoringChatOkPressed({required this.id});
}
