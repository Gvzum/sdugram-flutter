import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_flutter/config/injector/injector.dart';
import 'package:sdugram_flutter/config/utils/error_util.dart';
import 'package:sdugram_flutter/presentation/routes/app_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const String kEnvironment = String.fromEnvironment(
  'ENVIRONMENT',
  defaultValue: kDebugMode ? 'dev' : 'prod',
);

void main() async {
  await dotenv.load(
    fileName: '.env',
  );
  await configureDependencies(environment: kEnvironment);
  runApp(const MyApp());
  ErrorUtil.logError;
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
