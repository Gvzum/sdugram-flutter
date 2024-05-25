import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sdugram_core/data.dart';
import 'package:sdugram_profile/src/common/data/dtos/create_mentor_request_dto.dart';

part 'profile_source.g.dart';

@RestApi()
abstract class ProfileSource {
  factory ProfileSource(
      Dio dio, {
        String baseUrl,
      }) = _ProfileSource;

  @GET('/integration/user/get-user-data/')
  Future<UserDataDto> getUserRole();

  @POST('/integration/mentor/mentor-request/')
  Future<void> createMentorRequest({
    @Body() required CreateMentorRequestDto request
});

}