import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sdugram_auth/src/common/data/dtos/register_request_dto.dart';
import 'package:sdugram_auth/src/common/data/dtos/register_response_dto.dart';

part 'register_source.g.dart';

@RestApi()
abstract class RegisterSource {
  factory RegisterSource(
      Dio dio, {
        String baseUrl,
      }) = _RegisterSource;

  @POST('/integration/auth/register/')
  Future<RegisterResponseDto> register({
    @Body() required RegisterRequestDto body,
  });

}