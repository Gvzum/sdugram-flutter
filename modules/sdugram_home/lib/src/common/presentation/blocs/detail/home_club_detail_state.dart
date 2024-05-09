import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/club_detail_model.dart';

part 'home_club_detail_state.freezed.dart';

@freezed
class HomeClubDetailState with _$HomeClubDetailState {
  const factory HomeClubDetailState({
    required int id,
    @Default(HomeClubDetailInitial()) HomeClubDetailStatus clubDetail,
  }) = _HomeClubDetailState;
}

@freezed
sealed class HomeClubDetailStatus with _$HomeClubDetailStatus {
  const factory HomeClubDetailStatus.initial() = HomeClubDetailInitial;

  const factory HomeClubDetailStatus.loading() = HomeClubDetailLoading;

  const factory HomeClubDetailStatus.failure(Failure failure) =
  HomeClubDetailFailure;

  const factory HomeClubDetailStatus.success(ClubDetailModel detail) =
  HomeClubDetailSuccess;
}