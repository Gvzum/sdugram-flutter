import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/models/club_model.dart';

part 'home_clubs_state.freezed.dart';

@freezed
class HomeClubsState with _$HomeClubsState {
  const factory HomeClubsState({
    @Default(HomeClubsInitial()) HomeClubsStatus clubsStatus,
  }) = _HomeClubsState;
}


@freezed
sealed class HomeClubsStatus with _$HomeClubsStatus {
  const factory HomeClubsStatus.initial() = HomeClubsInitial;

  const factory HomeClubsStatus.loading() = HomeClubsLoading;

  const factory HomeClubsStatus.failure(Failure failure) =
  HomeClubsFailure;

  const factory HomeClubsStatus.success(List<ClubModel> listClubs) =
  HomeClubsSuccess;
}