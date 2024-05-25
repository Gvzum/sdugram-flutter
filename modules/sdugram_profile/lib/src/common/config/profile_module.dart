import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_profile/src/common/data/services/profile_service.dart';
import 'package:sdugram_profile/src/common/data/sources/profile_source.dart';
import 'package:sdugram_profile/src/common/domain/behaviors/create_mentor_behavior.dart';

@module
abstract class ProfileModule {
  @factoryMethod
  ProfileSource homeSource(
    @Named('protected-dio') Dio dio,
    EnvironmentConfig repositoryConfig,
  ) =>
      ProfileSource(
        dio,
        baseUrl: '${repositoryConfig.baseUrl}/api',
      );

  @factoryMethod
  CreateMentorBehavior fetchUserBehavior(
    ProfileService mentoringService,
  ) =>
      mentoringService;
}
