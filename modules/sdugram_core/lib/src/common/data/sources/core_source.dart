import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sdugram_core/src/common/data/dtos/user_data_dto.dart';

part 'core_source.g.dart';

@RestApi()
abstract class CoreSource {
  factory CoreSource(
    Dio dio, {
    String baseUrl,
  }) = _CoreSource;

  @GET('/integration/user/get-user-data/')
  Future<UserDataDto> getUserRole();
}
