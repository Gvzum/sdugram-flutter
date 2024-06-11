import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentee_request_model.dart';

part 'mentoring_request_state.freezed.dart';

@freezed
class MentoringRequestState with _$MentoringRequestState {
  const factory MentoringRequestState({
    @Default(MentoringRequestInitial()) MentoringRequestStatus mentoringStatus,
    @Default(MentoringRequestNavigationInitial()) MentoringRequestNavigationStatus navigation,
  }) = _MentoringRequestState;
}


@freezed
sealed class MentoringRequestStatus with _$MentoringRequestStatus {
  const factory MentoringRequestStatus.initial() = MentoringRequestInitial;

  const factory MentoringRequestStatus.loading() = MentoringRequestLoading;

  const factory MentoringRequestStatus.failure(Failure failure) =
  MentoringRequestFailure;

  const factory MentoringRequestStatus.emptySuccess() = MentoringRequestEmptySuccess;

  const factory MentoringRequestStatus.success(List<MenteeRequestModel> listMentee) =
  MentoringRequestSuccess;
}

@freezed
sealed class MentoringRequestNavigationStatus with _$MentoringRequestNavigationStatus {
  const factory MentoringRequestNavigationStatus.initial() = MentoringRequestNavigationInitial;

  const factory MentoringRequestNavigationStatus.loading() = MentoringRequestNavigationLoading;

  const factory MentoringRequestNavigationStatus.failure(Failure failure) =
  MentoringRequestNavigationFailure;

  const factory MentoringRequestNavigationStatus.createSuccess() = MentoringRequestNavigationCreateSuccess;

  const factory MentoringRequestNavigationStatus.sendRequestSuccess() = MentoringRequestNavigationSendRequestSuccess;
}