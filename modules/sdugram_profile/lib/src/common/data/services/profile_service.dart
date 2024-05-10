import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_profile/src/common/data/sources/profile_source.dart';

@lazySingleton
class ProfileService
    implements FetchUserDataBehavior{
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

}