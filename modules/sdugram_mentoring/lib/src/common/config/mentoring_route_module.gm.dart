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
    ChatDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatDetailScreen(),
      );
    },
    MentorRequestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MentorRequestScreen(),
      );
    },
    MentoringRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MentoringScreen(),
      );
    },
  };
}

/// generated route for
/// [ChatDetailScreen]
class ChatDetailRoute extends PageRouteInfo<void> {
  const ChatDetailRoute({List<PageRouteInfo>? children})
      : super(
          ChatDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MentorRequestScreen]
class MentorRequestRoute extends PageRouteInfo<void> {
  const MentorRequestRoute({List<PageRouteInfo>? children})
      : super(
          MentorRequestRoute.name,
          initialChildren: children,
        );

  static const String name = 'MentorRequestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
