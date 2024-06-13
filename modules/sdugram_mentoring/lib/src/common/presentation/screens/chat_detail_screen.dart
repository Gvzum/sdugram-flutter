import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_details_model.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_bloc.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_detail/chat_detail_bloc.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_detail/chat_detail_state.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_state.dart';
import 'package:sdugram_mentoring/src/common/presentation/dvos/messages_dvo.dart';

@RoutePage()
class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key, @PathParam('id') required this.id});

  final int id;

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.di<ChatDetailBloc>(param1: widget.id),
      child: BlocBuilder<ChatDetailBloc, ChatDetailState>(
          builder: (context, state) {
        return state.chatDetailStatus.when(initial: () {
          return const SizedBox.shrink();
        }, loading: () {
          return const Scaffold(
              body: Center(
            child: CircularLoader(),
          ));
        }, failure: (failure) {
          return Center(child: Text(failure.message));
        }, success: (details) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: const IconThemeData(size: 16),
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    details.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(details.avatar),
                        backgroundColor: Colors.grey[200],
                        minRadius: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: SafeArea(
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFF5F5F5),
                          Color(0xFFE0E9FD), // Sky blue color
                        ],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          child: ListView.builder(
                            itemCount: details.messages.length,
                            itemBuilder: (BuildContext context, int index) {
                              final message = details.messages[index];
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Bubble(
                                  message: message.content,
                                  isMe: message.sender == state.userId,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                          ),
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                hintText: 'Enter Message',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                height: 40,
                                width: 40,
                                color: kPrimaryColor,
                                child: const Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
      }),
    );
  }
}

class Bubble extends StatelessWidget {
  final bool isMe;
  final String message;

  const Bubble({super.key, required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: isMe
          ? const EdgeInsets.only(left: 40)
          : const EdgeInsets.only(right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: isMe
                      ? const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                              0.1,
                              1
                            ],
                          colors: [
                              Color(0x2E699CFF),
                              Color(0x2E699CFF),
                            ])
                      : const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                              0.1,
                              1
                            ],
                          colors: [
                              Color(0xFFFFFFFF),
                              Color(0xFFFFFFFF),
                            ]),
                  borderRadius: isMe
                      ? const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(15),
                        )
                      : const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(0),
                        ),
                ),
                child: Column(
                  crossAxisAlignment:
                      isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message,
                      textAlign: isMe ? TextAlign.end : TextAlign.start,
                      style: const TextStyle(
                          color: Colors.black, fontFamily: 'Poppins'),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

extension ChatMessageDetailX on ChatMessageDetailsModel {
  List<MessagesDvo> toDvo(ChatMessageDetailsModel details, int userId) {
    return details.messages
        .map(
          (e) => MessagesDvo(
              id: e.id,
              content: e.content,
              createdAt: e.createdAt,
              sender: e.sender,
              isMe: e.id == userId),
        )
        .toList();
  }
}
