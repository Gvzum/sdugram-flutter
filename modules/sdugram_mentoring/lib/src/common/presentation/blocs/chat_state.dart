import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_item.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default(ChatInitial()) ChatStatus chatStatus,
    @Default(ChatNavigationInitial()) ChatNavigationStatus navigation,
  }) = _ChatState;
}


@freezed
sealed class ChatStatus with _$ChatStatus {
  const factory ChatStatus.initial() = ChatInitial;

  const factory ChatStatus.loading() = ChatLoading;

  const factory ChatStatus.failure(Failure failure) =
  ChatFailure;

  const factory ChatStatus.success(List<ChatMessageItem> listChats) =
  ChatSuccess;
}

@freezed
sealed class ChatNavigationStatus with _$ChatNavigationStatus {
  const factory ChatNavigationStatus.initial() = ChatNavigationInitial;

  const factory ChatNavigationStatus.loading() = ChatNavigationLoading;

  const factory ChatNavigationStatus.failure(Failure failure) =
  ChatNavigationFailure;

  const factory ChatNavigationStatus.createSuccess() = ChatNavigationCreateSuccess;
}