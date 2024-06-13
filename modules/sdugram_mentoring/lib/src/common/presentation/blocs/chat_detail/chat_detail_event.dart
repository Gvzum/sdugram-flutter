sealed class ChatDetailEvent {}


class ChatEventDetailStarted extends ChatDetailEvent {
  final int id;

  ChatEventDetailStarted({required this.id});
}
