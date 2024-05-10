import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_mentoring/src/common/data/services/mentoring_service.dart';
import 'package:sdugram_mentoring/src/common/data/sources/mentoring_source.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/create_request_to_mentor_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentees_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_mentors_behavior.dart';

@module
abstract class MentoringModule {
  @factoryMethod
  MentoringSource homeSource(
      @Named('protected-dio') Dio dio,
      EnvironmentConfig repositoryConfig,
      ) =>
      MentoringSource(
        dio,
        baseUrl: '${repositoryConfig.baseUrl}/api',
      );

  @factoryMethod
  FetchMentorsBehavior fetchArticleBehavior(
      MentoringService mentoringService,
      ) =>
      mentoringService;

  @factoryMethod
  FetchMenteesBehavior fetchMentees(
      MentoringService mentoringService,
      ) =>
      mentoringService;

  @factoryMethod
  CreateRequestToMentorBehavior createRequest(
      MentoringService mentoringService,
      ) =>
      mentoringService;
}