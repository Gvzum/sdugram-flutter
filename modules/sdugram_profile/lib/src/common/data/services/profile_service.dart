import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_profile/src/common/data/dtos/create_mentor_request_dto.dart';
import 'package:sdugram_profile/src/common/data/sources/profile_source.dart';
import 'package:sdugram_profile/src/common/domain/behaviors/create_mentor_behavior.dart';
import 'package:sdugram_profile/src/common/domain/models/create_mentor_request_model.dart';

@lazySingleton
class ProfileService implements FetchUserDataBehavior, CreateMentorBehavior {
  final ProfileSource _profileSource;

  ProfileService({required ProfileSource profileSource})
      : _profileSource = profileSource;

  @override
  Future<Result<CoreUserDataModel>> fetchUserData() async {
    try {
      final result = await _profileSource.getUserRole();
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<void>> createMentor(
      {required CreateMentorRequestModel request}) async {
    try {
      final result = await _profileSource.createMentorRequest(
          request: CreateMentorRequestDto(
              coverLetter: request.coverLetter,
              occupation: request.occupation,
              university: request.university,
              company: request.company,
              yearExperience: request.yearExperience));
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }
}
