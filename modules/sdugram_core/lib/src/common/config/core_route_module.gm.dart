// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'core_route_module.dart';

abstract class _$CoreRouteModule extends AutoRouterModule {
  @override
  final Map<String, PageFactory> pagesMap = {
    SduOnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SduOnboardingScreen(),
      );
    }
  };
}

/// generated route for
/// [SduOnboardingScreen]
class SduOnboardingRoute extends PageRouteInfo<void> {
  const SduOnboardingRoute({List<PageRouteInfo>? children})
      : super(
          SduOnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SduOnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
