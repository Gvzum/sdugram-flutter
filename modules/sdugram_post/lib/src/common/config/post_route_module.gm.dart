// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'post_route_module.dart';

abstract class _$PostRouteModule extends AutoRouterModule {
  @override
  final Map<String, PageFactory> pagesMap = {
    PostRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PostScreen(),
      );
    }
  };
}

/// generated route for
/// [PostScreen]
class PostRoute extends PageRouteInfo<void> {
  const PostRoute({List<PageRouteInfo>? children})
      : super(
          PostRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
