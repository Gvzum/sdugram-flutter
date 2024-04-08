import 'package:flutter_dotenv/flutter_dotenv.dart' as dotenv;
import 'package:injectable/injectable.dart';

const _baseUrl = 'BASE_URL';

@lazySingleton
class EnvironmentConfig {
  final String baseUrl = '${dotenv.dotenv.env[_baseUrl]}';
}
