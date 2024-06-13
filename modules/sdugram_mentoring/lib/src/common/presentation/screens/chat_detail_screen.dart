import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_auth/sdugram_auth.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';
import 'package:web_socket_channel/io.dart';

import 'package:sdugram_mentoring/src/common/domain/models/chat_message_details_model.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_detail/chat_detail_bloc.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_detail/chat_detail_state.dart';

@RoutePage()
class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key, @PathParam('id') required this.id});

  final int id;

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  late IOWebSocketChannel _channel;
  late TextEditingController _controller;
  late Future<void> _futureConnection;
  late ScaffoldMessengerState _scaffoldMessenger;

  List<Messages> _messages = [];

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _futureConnection = connectWebSocket();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Capture the reference to ScaffoldMessenger in didChangeDependencies
    _scaffoldMessenger = ScaffoldMessenger.of(context);
  }

  Future<void> connectWebSocket() async {
    try {
      final storage = SecureStorageSource();
      final tokenDto = await storage.getToken();
      final token = tokenDto?.accessToken;
      print('Token brother: $token');
      _channel = IOWebSocketChannel.connect(
          Uri.parse('wss://sdugram.kz/ws/chat/${widget.id}/'),
          headers: {'Authorization': 'Bearer $token'});
      _channel.stream.listen(
        (message) {
          // {"command": "new_message", "message": {"id": 12, "author": "gvzum", "content": "How are you?", "timestamp": "2024-06-13 05:06:27.355680+00:00"}}
          final messageJson = jsonDecode(message);
          print('MessageJson: $messageJson');
          print('MessageJson command: ${messageJson['command']}');

          if (messageJson['command'] == 'new_message') {
            final message = MessageDto(
              id: messageJson['message']['id'],
              content: messageJson['message']['content'],
              sender: messageJson['message']['author'],
              createdAt: DateTime.now(),
            );
            setState(() {
              _messages.insert(0, message);
            });
            print("I inserted message: $message");
          }
          print('Received: ${message}');
        },
        onError: (error) {
          print('Error dkkkkk $error');
          _scaffoldMessenger.showSnackBar(
            SnackBar(content: Text('WebSocket Error: $error')),
          );
        },
        onDone: () {
          print('WebSocket closed');
        },
      );
    } catch (e) {
      print('Exception fuuuuu: $e');
      _scaffoldMessenger.showSnackBar(
        SnackBar(content: Text('WebSocket Exception: $e')),
      );
    }
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      final payload = SendMessagePayload(
        command: 'new_message',
        message: _controller.text,
      );
      // _channel.sink.add(payload.toString());
      final t = payload.toJson().toString();
      _channel.sink.add(jsonEncode(payload.toJson()));
      _controller.clear();
    }
  }

  @override
  void dispose() {
    print('Dispose called');
    _channel.sink.close();
    _controller.dispose();
    super.dispose();
  }

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
          _messages = details.messages;
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
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 70),
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            child: ListView.builder(
                              itemCount: details.messages.length,
                              reverse: true,
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
                              controller: _controller,
                              decoration: const InputDecoration(
                                hintText: 'Enter Message',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _sendMessage();
                              // context
                              //     .read<ChatDetailBloc>()
                              //     .add(ChatEventDetailStarted(id: widget.id));
                            },
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

class SendMessagePayload {
  final String command;
  final String message;

  SendMessagePayload({
    required this.command,
    required this.message,
  });

  Map<String, dynamic> toJson() {
    return {
      'command': command,
      'message': message,
    };
  }
}
