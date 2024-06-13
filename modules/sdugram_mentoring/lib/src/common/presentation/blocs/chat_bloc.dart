import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_chat_detail_use_case.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_event.dart';

import '../../domain/use_cases/fetch_chat_list_use_case.dart';
import 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final FetchChatListUseCase _fetchChatListUseCase;

  ChatBloc(
    this._fetchChatListUseCase,
  ) : super(const ChatState()) {
    _setupHandlers();
    add(ChatEventStarted());
  }

  void _setupHandlers() {
    on<ChatEventStarted>(_onFetchChatList);
  }

  Future<void> _onFetchChatList(
      ChatEventStarted event, Emitter<ChatState> emit) async {
    emit(state.copyWith(chatStatus: const ChatLoading()));
    final result = await _fetchChatListUseCase(null);
    final chatList = result.value;
    if (chatList == null) {
      emit(state.copyWith(chatStatus: ChatFailure(result.failureOrDefault)));
      return;
    }
    emit(state.copyWith(chatStatus: ChatSuccess(chatList)));
  }
}
