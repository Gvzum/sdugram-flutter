// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'tickets_route_module.dart';

abstract class _$TicketsRouteModule extends AutoRouterModule {
  @override
  final Map<String, PageFactory> pagesMap = {
    TicketsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TicketsScreen(),
      );
    }
  };
}

/// generated route for
/// [TicketsScreen]
class TicketsRoute extends PageRouteInfo<void> {
  const TicketsRoute({List<PageRouteInfo>? children})
      : super(
          TicketsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TicketsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
