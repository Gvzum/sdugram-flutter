class ChatMessageItem {
  final int id;
  final String name;
  final String? message;
  final String imageUrl;
  final DateTime time;

  ChatMessageItem({
    required this.name,
    required this.message,
    required this.imageUrl,
    required this.time,
    required this.id,
  });
}