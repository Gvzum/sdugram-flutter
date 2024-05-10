import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sdugram_core/data.dart';

part 'profile_source.g.dart';

@RestApi()
abstract class ProfileSource {
  factory ProfileSource(
      Dio dio, {
        String baseUrl,
      }) = _ProfileSource;

  @GET('/integration/user/get-user-data/')
  Future<UserDataDto> getUserRole();
}