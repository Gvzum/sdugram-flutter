import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileInitial()) ProfileStatus profileStatus,
    @Default(ProfileNavigationInitial()) ProfileNavigationStatus navigation,
  }) = _ProfileState;
}


@freezed
sealed class ProfileStatus with _$ProfileStatus {
  const factory ProfileStatus.initial() = ProfileInitial;

  const factory ProfileStatus.loading() = ProfileLoading;

  const factory ProfileStatus.failure(Failure failure) =
  ProfileFailure;

  const factory ProfileStatus.success(CoreUserDataModel user) =
  ProfileSuccess;

}

@freezed
sealed class ProfileNavigationStatus with _$ProfileNavigationStatus {
  const factory ProfileNavigationStatus.initial() = ProfileNavigationInitial;

  const factory ProfileNavigationStatus.loading() = ProfileNavigationLoading;

  const factory ProfileNavigationStatus.failure(Failure failure) =
  ProfileNavigationFailure;

  const factory ProfileNavigationStatus.createSuccess() = ProfileNavigationCreateSuccess;
}