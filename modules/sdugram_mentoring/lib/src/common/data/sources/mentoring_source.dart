import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:sdugram_core/data.dart';
import 'package:sdugram_mentoring/src/common/data/dtos/mentee_request_dto.dart';
import 'package:sdugram_mentoring/src/common/data/dtos/mentor_request_dto.dart';

part 'mentoring_source.g.dart';

@RestApi()
abstract class MentoringSource {
  factory MentoringSource(
    Dio dio, {
    String baseUrl,
  }) = _MentoringSource;

  @GET('/integration/user/user-profile/?profile_type_in=mentor-student,mentor-guest')
  Future<BaseListResponseDto<UserProfileResponseDto>> getMentors();

  @POST('/integration/mentor/mentee-request/')
  Future<void> createRequestToMentor({
    @Body() required MentorRequestDto request,
});

  @GET('/integration/mentor/mentee-request/')
  Future<List<MenteeRequestDto>> getMentees({
    @Query('mentor') required int mentor,
  });
}
