
import 'package:sdugram_core/domain.dart';

sealed class CoreNavigationEvent extends CoreEvent {}

class NavigationEventPop extends CoreNavigationEvent {}

class NavigationEventPopUntilRoot extends CoreNavigationEvent {}

class NavigationEventPopUntil extends CoreNavigationEvent {
  final String path;

  NavigationEventPopUntil(this.path);
}

class NavigationEventReplace extends CoreNavigationEvent {
  final String path;

  NavigationEventReplace(this.path);
}

class NavigationEventNavigate extends CoreNavigationEvent {
  final String path;

  NavigationEventNavigate(this.path);
}

class NavigationEventPush extends CoreNavigationEvent {
  final String path;

  NavigationEventPush(this.path);
}
