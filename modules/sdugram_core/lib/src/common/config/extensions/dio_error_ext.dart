
import 'package:dio/dio.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/src/common/data/dtos/base_error_dto.dart';

extension HandleDioErrorExt on DioException {
  Failure handleError(String defaultMessage) {
    try {
      switch (response?.statusCode) {
        case 400:
          BaseErrorDto? err;
          Map<String, String>? fieldMessages;
          if (response?.data != null) {
            err = BaseErrorDto.fromJson(response?.data);
          }
          return BaseServerFailure(
            code: 400,
            message:
                err?.fieldMessages ?? response?.data?['message'] ?? defaultMessage,
            fieldMessages: fieldMessages,
          );
        case 401:
          return UnauthorizedFailure(
            message: response?.data?['message'] ?? message ?? defaultMessage,
          );
        case 403:
          return AccessDeniedFailure(
            message: response?.data?['message'] ?? message ?? defaultMessage,
          );
        case 404:
          return NotFoundFailure(
            message: response?.data?['message'] ?? message ?? defaultMessage,
          );
        case 500:
        case 502:
          return BadResponseFailure(
            message: response?.data?['message'] ?? message ?? defaultMessage,
          );
        case 504:
          return BadResponseFailure(message: message ?? defaultMessage);
        default:
          return OtherFailure(
            code: response?.statusCode,
            message: response?.data?['message'] ?? message ?? defaultMessage,
          );
      }
    } catch (_) {
      return OtherFailure(
        code: response?.statusCode,
        message: defaultMessage,
      );
    }
  }
}
