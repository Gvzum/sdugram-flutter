import 'package:get_it/get_it.dart';
import 'package:sdugram_core/config.dart';

abstract class ErrorUtil {
  const ErrorUtil._();

  static Future<void> logError(
    Object exception,
    StackTrace stackTrace, {
    String? hint,
    bool fatal = false,
  }) async {
    final logger = GetIt.instance<CoreLogger>();
    logger.handle(exception, stackTrace, hint);
  }
}
