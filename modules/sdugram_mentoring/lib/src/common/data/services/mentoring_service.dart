import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/src/common/domain/models/result.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/src/common/domain/models/user_profile_model.dart';
import 'package:sdugram_mentoring/src/common/data/dtos/mentee_request_dto.dart';
import 'package:sdugram_mentoring/src/common/data/dtos/mentor_accept_request_dto.dart';
import 'package:sdugram_mentoring/src/common/data/dtos/mentor_request_dto.dart';
import 'package:sdugram_mentoring/src/common/data/mappers/chat_detail_mapper.dart';
import 'package:sdugram_mentoring/src/common/data/mappers/chat_list_mapper.dart';
import 'package:sdugram_mentoring/src/common/data/sources/mentoring_source.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/apply_mentees_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/create_request_to_mentor_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_chat_detail_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_chat_list_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentees_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentors_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_details_model.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_item.dart';
import 'package:sdugram_mentoring/src/common/domain/models/mentee_request_model.dart';

@lazySingleton
class MentoringService
    implements
        FetchMentorsBehavior,
        CreateRequestToMentorBehavior,
        FetchMenteesBehavior,
        ApplyMenteesBehavior,
        FetchChatListBehavior,
        FetchChatDetailBehavior {
  final MentoringSource _mentoringSource;

  MentoringService({required MentoringSource mentoringSource})
      : _mentoringSource = mentoringSource;

  @override
  Future<Result<List<UserProfileModel>>> fetchMentors() async {
    try {
      final result = await _mentoringSource.getMentors();
      return SuccessResult(result.results);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<void>> createRequestMentor({
    required int id,
    required String letter,
  }) async {
    try {
      final result = await _mentoringSource.createRequestToMentor(
          request: MentorRequestDto(mentor: id, coverLetter: letter));
      return SuccessResult(result);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<List<MenteeRequestModel>>> fetchMentees(
      {required int id}) async {
    try {
      final result = await _mentoringSource.getMentees(mentor: id);
      return SuccessResult(result.results.map((e) => e.toModel()).toList());
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<void>> applyMentees(
      {required int id, required String requestStatus}) async {
    try {
      await _mentoringSource.applyMentees(
          id: id,
          request: MentorAcceptRequestDto(
            requestStatus: requestStatus,
          ));
      return SuccessResult(null);
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching some data'));
    }
  }

  @override
  Future<Result<List<ChatMessageItem>>> fetchChatList() async {
    try {
      final result = await _mentoringSource.getChats();
      return SuccessResult(result.results.map((e) => e.toModel()).toList());
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching chat list'));
    }
  }

  @override
  Future<Result<ChatMessageDetailsModel>> fetchChatDetail(
      {required int id}) async {
    try {
      final result = await _mentoringSource.getChatDetail(id: id);
      return SuccessResult(result.toModel());
    } on DioException catch (e) {
      return ErrorResult(
          e.handleError('Error occurred while fetching chat list'));
    }
  }
}
