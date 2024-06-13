class MessagesDvo {
  final int id;
  final String content;
  final DateTime createdAt;
  final int sender;
  final bool isMe;

  MessagesDvo({required this.id, required this.content, required this.createdAt, required this.sender, required this.isMe});
}