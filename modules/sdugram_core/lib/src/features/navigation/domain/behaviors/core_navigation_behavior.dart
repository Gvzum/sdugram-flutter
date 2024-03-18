
import 'package:sdugram_core/domain.dart';

abstract interface class CoreNavigationBehavior {
  Future<Result<void>> tryPush(String path);

  Future<Result<void>> tryNavigate(String path);

  Future<Result<void>> tryReplace(String path);

  Future<Result<void>> tryPopUntil(String path);

  Future<Result<void>> tryPopUntilRoot();

  Future<Result<void>> tryPop();
}
