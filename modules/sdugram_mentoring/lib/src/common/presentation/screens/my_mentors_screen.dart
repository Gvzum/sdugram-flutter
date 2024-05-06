import 'package:flutter/material.dart';

class MyMentorsScreen extends StatelessWidget {
  const MyMentorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatMessage> messages = [
      ChatMessage(
        name: 'Thomas Simmons',
        message: 'YOU: OK',
        imageUrl: 'https://via.placeholder.com/150',
        time: '15:23',
        unreadCount: 2,
      ),
      ChatMessage(
        name: 'Thomas Simmons',
        message: 'YOU: OK',
        imageUrl: 'https://via.placeholder.com/150',
        time: '15:23',
        unreadCount: 2,
      ),
      // ... o
      ChatMessage(
        name: 'Thomas Simmons',
        message: 'YOU: OK',
        imageUrl: 'https://via.placeholder.com/150',
        time: '15:23',
        unreadCount: 2,
      ),
      // ... o
      ChatMessage(
        name: 'Thomas Simmons',
        message: 'YOU: OK',
        imageUrl: 'https://via.placeholder.com/150',
        time: '15:23',
        unreadCount: 2,
      ),
      // ... other chat messages
    ];
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return ChatItem(message: messages[index]);
      },
    );
  }
}

class ChatItem extends StatelessWidget {
  final ChatMessage message;

  const ChatItem({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(message.imageUrl),
      ),
      title: Text(message.name),
      subtitle: Text(message.message),
      trailing: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
          border: const Border(bottom: BorderSide(color: Colors.grey))
        ),
        constraints: const BoxConstraints(
          minWidth: 24,
          minHeight: 24,
        ),
        child: Text(
          message.unreadCount.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
      onTap: () {
        // TODO: Implement chat message tap
      },
    );
  }
}

class ChatMessage {
  final String name;
  final String message;
  final String imageUrl;
  final String time;
  final int unreadCount;

  ChatMessage({
    required this.name,
    required this.message,
    required this.imageUrl,
    required this.time,
    this.unreadCount = 0,
  });
}
