import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';

part 'mentoring_state.freezed.dart';

@freezed
class MentoringState with _$MentoringState {
  const factory MentoringState({
    @Default(MentoringInitial()) MentoringStatus mentoringStatus,
    @Default(MentoringNavigationInitial()) MentoringNavigationStatus navigation,
  }) = _MentoringState;
}


@freezed
sealed class MentoringStatus with _$MentoringStatus {
  const factory MentoringStatus.initial() = MentoringInitial;

  const factory MentoringStatus.loading() = MentoringLoading;

  const factory MentoringStatus.overlayLoading() = MentoringOverlayLoading;

  const factory MentoringStatus.failure(Failure failure) =
  MentoringFailure;

  const factory MentoringStatus.success(List<UserProfileModel> listClubs) =
  MentoringSuccess;

  const factory MentoringStatus.createSuccess() = MentoringCreateSuccess;
}

@freezed
sealed class MentoringNavigationStatus with _$MentoringNavigationStatus {
  const factory MentoringNavigationStatus.initial() = MentoringNavigationInitial;

  const factory MentoringNavigationStatus.loading() = MentoringNavigationLoading;

  const factory MentoringNavigationStatus.failure(Failure failure) =
  MentoringNavigationFailure;

  const factory MentoringNavigationStatus.createSuccess() = MentoringNavigationCreateSuccess;
}