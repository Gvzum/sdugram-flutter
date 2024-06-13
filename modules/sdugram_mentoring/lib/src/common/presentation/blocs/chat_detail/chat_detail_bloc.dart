import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/use_cases/fetch_chat_detail_use_case.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_detail/chat_detail_event.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/chat_detail/chat_detail_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class ChatDetailBloc extends Bloc<ChatDetailEvent, ChatDetailState> {
  final FetchChatDetailUseCase _chatDetailUseCase;

  ChatDetailBloc(
    @factoryParam int id,
    this._chatDetailUseCase,
  ) : super(const ChatDetailState()) {
    _setupHandlers();
    add(ChatEventDetailStarted(id: id));
  }

  void _setupHandlers() {
    on<ChatEventDetailStarted>(_onFetchChatDetail);
  }

  Future<void> _onFetchChatDetail(
    ChatEventDetailStarted event,
    Emitter<ChatDetailState> emit,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final userId = prefs.getInt('userId');
    if (userId == null) {
      return;
    }
    emit(state.copyWith(chatDetailStatus: const ChatDetailLoading()));
    final result = await _chatDetailUseCase(event.id);
    final chatList = result.value;
    if (chatList == null) {
      emit(state.copyWith(
          chatDetailStatus: ChatDetailFailure(result.failureOrDefault)));
      return;
    }
    emit(state.copyWith(
        chatDetailStatus: ChatDetailSuccess(chatList), userId: userId));
  }
}
