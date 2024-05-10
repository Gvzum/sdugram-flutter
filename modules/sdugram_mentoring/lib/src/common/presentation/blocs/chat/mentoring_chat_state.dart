import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentee_request_model.dart';

part 'mentoring_chat_state.freezed.dart';

@freezed
class MentoringChatState with _$MentoringChatState {
  const factory MentoringChatState({
    @Default(MentoringChatInitial()) MentoringChatStatus mentoringStatus,
    @Default(MentoringChatNavigationInitial()) MentoringChatNavigationStatus navigation,
  }) = _MentoringChatState;
}


@freezed
sealed class MentoringChatStatus with _$MentoringChatStatus {
  const factory MentoringChatStatus.initial() = MentoringChatInitial;

  const factory MentoringChatStatus.loading() = MentoringChatLoading;

  const factory MentoringChatStatus.emptySuccess() =
  MentoringChatEmptySuccess;

  const factory MentoringChatStatus.success(List<MenteeRequestModel> listMentee) =
  MentoringChatSuccess;
}

@freezed
sealed class MentoringChatNavigationStatus with _$MentoringChatNavigationStatus {
  const factory MentoringChatNavigationStatus.initial() = MentoringChatNavigationInitial;

  const factory MentoringChatNavigationStatus.loading() = MentoringChatNavigationLoading;

  const factory MentoringChatNavigationStatus.failure(Failure failure) =
  MentoringChatNavigationFailure;

  const factory MentoringChatNavigationStatus.createSuccess() = MentoringChatNavigationCreateSuccess;
}