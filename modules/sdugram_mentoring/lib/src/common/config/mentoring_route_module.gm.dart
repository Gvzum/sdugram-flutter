// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'mentoring_route_module.dart';

abstract class _$MentoringRouteModule extends AutoRouterModule {
  @override
  final Map<String, PageFactory> pagesMap = {
    MentoringRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MentoringScreen(),
      );
    }
  };
}

/// generated route for
/// [MentoringScreen]
class MentoringRoute extends PageRouteInfo<void> {
  const MentoringRoute({List<PageRouteInfo>? children})
      : super(
          MentoringRoute.name,
          initialChildren: children,
        );

  static const String name = 'MentoringRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
