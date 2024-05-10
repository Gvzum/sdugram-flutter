import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_profile/src/common/data/sources/profile_source.dart';

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

  // @factoryMethod
  // FetchUserDataBehavior fetchUserBehavior(
  //   ProfileService mentoringService,
  // ) =>
  //     mentoringService;
}
