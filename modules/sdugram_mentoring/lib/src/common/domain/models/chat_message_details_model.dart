class ChatMessageDetailsModel {
  final String name;
 final List<Messages> messages;
 final String avatar;

  ChatMessageDetailsModel({
    required this.messages,
    required this.name,
    required this.avatar,
  });
}

class Messages {
  final int id;
  final String content;
  final DateTime createdAt;
  final int sender;

  Messages(
      {required this.id,
      required this.content,
      required this.createdAt,
      required this.sender});
}
