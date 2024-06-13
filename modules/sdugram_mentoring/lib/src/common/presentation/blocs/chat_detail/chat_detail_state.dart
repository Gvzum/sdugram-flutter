import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_details_model.dart';

part 'chat_detail_state.freezed.dart';

@freezed
class ChatDetailState with _$ChatDetailState {
  const factory ChatDetailState({
    @Default(ChatDetailInitial()) ChatDetailStatus chatDetailStatus,
    @Default(null) int? userId,
  }) = _ChatDetailState;
}


@freezed
sealed class ChatDetailStatus with _$ChatDetailStatus {
  const factory ChatDetailStatus.initial() = ChatDetailInitial;

  const factory ChatDetailStatus.loading() = ChatDetailLoading;

  const factory ChatDetailStatus.failure(Failure failure) =
  ChatDetailFailure;

  const factory ChatDetailStatus.success(ChatMessageDetailsModel listChats) =
  ChatDetailSuccess;
}
