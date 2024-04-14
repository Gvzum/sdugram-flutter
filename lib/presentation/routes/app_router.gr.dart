// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:sdugram_auth/sdugram_auth.dart' as _i11;
import 'package:sdugram_core/config.dart' as _i12;
import 'package:sdugram_flutter/presentation/widgets/main_screen.dart' as _i1;
import 'package:sdugram_flutter/screen/setting_screen.dart' as _i2;
import 'package:sdugram_flutter/screen/song_detail_screen.dart' as _i3;
import 'package:sdugram_flutter/screen/song_list_screen.dart' as _i4;
import 'package:sdugram_home/sdugram_home.dart' as _i6;
import 'package:sdugram_mentoring/sdugram_mentoring.dart' as _i10;
import 'package:sdugram_post/sdugram_post.dart' as _i9;
import 'package:sdugram_profile/sdugram_profile.dart' as _i7;
import 'package:sdugram_tickets/sdugram_tickets.dart' as _i8;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SettingScreen(),
      );
    },
    SongDetailRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SongDetailScreen(),
      );
    },
    SongListRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SongListScreen(),
      );
    },
    ..._i6.HomeRouteModule().pagesMap,
    ..._i7.ProfileRouteModule().pagesMap,
    ..._i8.TicketsRouteModule().pagesMap,
    ..._i9.PostRouteModule().pagesMap,
    ..._i10.MentoringRouteModule().pagesMap,
    ..._i11.AuthRouteModule().pagesMap,
    ..._i12.CoreRouteModule().pagesMap,
  };
}

/// generated route for
/// [_i1.MainScreen]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SettingScreen]
class SettingRoute extends _i5.PageRouteInfo<void> {
  const SettingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SongDetailScreen]
class SongDetailRoute extends _i5.PageRouteInfo<void> {
  const SongDetailRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SongDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SongDetailRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SongListScreen]
class SongListRoute extends _i5.PageRouteInfo<void> {
  const SongListRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SongListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SongListRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
