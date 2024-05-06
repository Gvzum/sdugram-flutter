// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'home_route_module.dart';

abstract class _$HomeRouteModule extends AutoRouterModule {
  @override
  final Map<String, PageFactory> pagesMap = {
    ClubsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ClubsScreen(),
      );
    },
    EventsDetailRouteFailure.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EventsDetailRouteFailureArgs>(
          orElse: () => EventsDetailRouteFailureArgs(
              failure: pathParams.getString('failure')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EventsDetailScreenFailure(
          key: args.key,
          failure: args.failure,
        ),
      );
    },
    EventsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EventsScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    HomeSuccessRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeSuccessScreen(),
      );
    },
  };
}

/// generated route for
/// [ClubsScreen]
class ClubsRoute extends PageRouteInfo<void> {
  const ClubsRoute({List<PageRouteInfo>? children})
      : super(
          ClubsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClubsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EventsDetailScreenFailure]
class EventsDetailRouteFailure
    extends PageRouteInfo<EventsDetailRouteFailureArgs> {
  EventsDetailRouteFailure({
    Key? key,
    required String failure,
    List<PageRouteInfo>? children,
  }) : super(
          EventsDetailRouteFailure.name,
          args: EventsDetailRouteFailureArgs(
            key: key,
            failure: failure,
          ),
          rawPathParams: {'failure': failure},
          initialChildren: children,
        );

  static const String name = 'EventsDetailRouteFailure';

  static const PageInfo<EventsDetailRouteFailureArgs> page =
      PageInfo<EventsDetailRouteFailureArgs>(name);
}

class EventsDetailRouteFailureArgs {
  const EventsDetailRouteFailureArgs({
    this.key,
    required this.failure,
  });

  final Key? key;

  final String failure;

  @override
  String toString() {
    return 'EventsDetailRouteFailureArgs{key: $key, failure: $failure}';
  }
}

/// generated route for
/// [EventsScreen]
class EventsRoute extends PageRouteInfo<void> {
  const EventsRoute({List<PageRouteInfo>? children})
      : super(
          EventsRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeSuccessScreen]
class HomeSuccessRoute extends PageRouteInfo<void> {
  const HomeSuccessRoute({List<PageRouteInfo>? children})
      : super(
          HomeSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeSuccessRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
