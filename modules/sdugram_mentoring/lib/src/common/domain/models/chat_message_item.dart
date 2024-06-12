class ChatMessageItem {
  final String name;
  final String message;
  final String imageUrl;
  final String time;
  final int unreadCount;

  ChatMessageItem({
    required this.name,
    required this.message,
    required this.imageUrl,
    required this.time,
    this.unreadCount = 0,
  });
}