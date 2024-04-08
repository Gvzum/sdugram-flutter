import 'package:auto_route/auto_route.dart';
import 'package:sdugram_profile/sdugram_profile.dart';
import 'package:sdugram_home/sdugram_home.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';
import 'package:sdugram_post/sdugram_post.dart';
import 'package:sdugram_tickets/sdugram_tickets.dart';
import 'package:sdugram_auth/sdugram_auth.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route', modules: [
  HomeRouteModule,
  ProfileRouteModule,
  TicketsRouteModule,
  PostRouteModule,
  MentoringRouteModule,
  AuthRouteModule,
])
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, path: '/login', initial: true),
        AutoRoute(
          page: MainRoute.page,
          path: '/sdugram',
          // initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, path: 'home'),
            AutoRoute(page: MentoringRoute.page, path: 'mentoring'),
            AutoRoute(page: PostRoute.page, path: 'post'),
            AutoRoute(page: TicketsRoute.page, path: 'tickets'),
            AutoRoute(page: ProfileRoute.page, path: 'profile'),
          ],
        ),
      ];
}
