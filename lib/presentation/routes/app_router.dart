import 'package:auto_route/auto_route.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_profile/sdugram_profile.dart';
import 'package:sdugram_home/sdugram_home.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';
import 'package:sdugram_post/sdugram_post.dart';
import 'package:sdugram_tickets/sdugram_tickets.dart';
import 'package:sdugram_auth/sdugram_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    bool isAuthenticated = await checkUserAuthenticationStatus();

    if (isAuthenticated) {
      resolver.next(true);
    } else {
      router.push(LoginRoute());
    }
  }

  Future<bool> checkUserAuthenticationStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Assuming you save a boolean flag named 'isLoggedIn' when the user logs in
    return prefs.getBool('isLoggedIn') ?? false;
  }

  Future<bool> checkIfNewUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Check if the 'isNewUser' key exists; if not, assume it's a new user.
    bool isNewUser = prefs.getBool('isNewUser') ?? true;

    // After the first login, set 'isNewUser' to false.
    if (isNewUser) {
      await prefs.setBool('isNewUser', false);
    }

    return isNewUser;
  }
}

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
  modules: [
    HomeRouteModule,
    ProfileRouteModule,
    TicketsRouteModule,
    PostRouteModule,
    MentoringRouteModule,
    AuthRouteModule,
    CoreRouteModule
  ],
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: '/login/:username',
        ),
        AutoRoute(
          page: SduOnboardingRoute.page,
          path: '/onboarding',
          // initial: true
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/register',
          // initial: true
        ),
        AutoRoute(
          page: HomeSuccessRoute.page,
          path: '/success',
        ),
        AutoRoute(
          page: EventsDetailRouteFailure.page,
          path: '/error/:failure',
        ),
        AutoRoute(
          page: ClubDetailRoute.page,
          path: '/club/:id',
        ),
        AutoRoute(
          page: MainRoute.page,
          path: '/sdugram',
          initial: true,
          guards: [AuthGuard()],
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
