import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat/mentoring_chat_bloc.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat/mentoring_chat_state.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<MentoringChatBloc, MentoringChatState>(
                builder: (context, state) {
              return state.mentoringStatus.when(initial: () {
                return const SizedBox.shrink();
              }, loading: () {
                return const CircularLoader();
              }, emptySuccess: () {
                return const SizedBox.shrink();
              }, success: (mentees) {
                return mentees.isNotEmpty
                    ? SizedBox(
                        width: double.infinity,
                        height: 65,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Requests',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  StudentRequestIcon(
                                    firstIcon:
                                        mentees[0].mentee.profileData?.avatar ??
                                            kDefaultImageUrl,
                                    secondIcon:
                                        mentees[1].mentee.profileData?.avatar ??
                                            kDefaultImageUrl,
                                    count: mentees.length,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    size: 24,
                                    color: kTextColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : const SizedBox.shrink();
              });
            }),
            Container(
              height: 8,
              color: kBackgroundColor,
            ),
            Column(
              children: messages.map((message) {
                return ChatItem(
                  message: message,
                );
              }).toList(),
            ),
          ],
        ),
      ),
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
            border: const Border(bottom: BorderSide(color: Colors.grey))),
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

class StudentRequestIcon extends StatelessWidget {
  const StudentRequestIcon({
    required this.firstIcon,
    required this.secondIcon,
    super.key,
    required this.count,
  });

  final String firstIcon;
  final String secondIcon;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Positioned(
          top: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              firstIcon,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 40,
                  width: 40,
                  color: kBackgroundColor,
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 0),
          child: Container(
            decoration: BoxDecoration(
              // Border color and width
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                secondIcon,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 24,
                    width: 24,
                    color: kBackgroundColor,
                  );
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, top: 0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              // Border color and width
              color: kLightGrey,
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Text(
              '$count+',
              style: const TextStyle(
                color: Colors.black,
              ),
            )),
          ),
        ),
      ],
    );
  }
}
