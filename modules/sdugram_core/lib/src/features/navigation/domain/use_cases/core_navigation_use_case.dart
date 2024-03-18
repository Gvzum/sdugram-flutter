import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/src/features/navigation/domain/behaviors/core_navigation_behavior.dart';
import 'package:sdugram_core/src/features/navigation/domain/models/core_navigation_event.dart';

@injectable
class CoreNavigationUseCase implements Callable<CoreNavigationEvent, void> {
  final CoreNavigationBehavior _navigationBehavior;

  CoreNavigationUseCase(this._navigationBehavior);

  @override
  Future<Result<void>> call(CoreNavigationEvent event) {
    switch (event) {
      case NavigationEventPop():
        return _navigationBehavior.tryPop();
      case NavigationEventPopUntilRoot():
        return _navigationBehavior.tryPopUntilRoot();
      case NavigationEventPopUntil(path: final path):
        return _navigationBehavior.tryPopUntil(path);
      case NavigationEventReplace(path: final path):
        return _navigationBehavior.tryReplace(path);
      case NavigationEventNavigate(path: final path):
        return _navigationBehavior.tryNavigate(path);
      case NavigationEventPush(path: final path):
        return _navigationBehavior.tryPush(path);
    }
  }
}
