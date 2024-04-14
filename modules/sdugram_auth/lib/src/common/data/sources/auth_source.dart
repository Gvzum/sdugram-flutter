import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sdugram_auth/sdugram_auth.dart';
import 'package:sdugram_auth/src/common/data/dtos/register_request_dto.dart';
import 'package:sdugram_auth/src/common/data/dtos/register_response_dto.dart';

part 'auth_source.g.dart';

@RestApi()
abstract class AuthSource {
  factory AuthSource(
      Dio dio, {
        String baseUrl,
      }) = _AuthSource;

  @POST('/integration/auth/token/')
  Future<TokenDto> getToken({
    @Body() required AuthRequestDto body,
  });

  @POST('/integration/auth/register/')
  Future<RegisterResponseDto> register({
    @Body() required RegisterRequestDto body,
  });

}
