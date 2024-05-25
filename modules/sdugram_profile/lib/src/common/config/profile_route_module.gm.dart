// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'profile_route_module.dart';

abstract class _$ProfileRouteModule extends AutoRouterModule {
  @override
  final Map<String, PageFactory> pagesMap = {
    ProfileMentorRequestFormRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileMentorRequestFormScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [ProfileMentorRequestFormScreen]
class ProfileMentorRequestFormRoute extends PageRouteInfo<void> {
  const ProfileMentorRequestFormRoute({List<PageRouteInfo>? children})
      : super(
          ProfileMentorRequestFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileMentorRequestFormRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
