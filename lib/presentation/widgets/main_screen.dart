import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/sdugram_home.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';
import 'package:sdugram_profile/sdugram_profile.dart';
import 'package:sdugram_tickets/sdugram_tickets.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isGuest = false;

  @override
  void initState() {
    super.initState();
    isGuestOnly();
  }

  void isGuestOnly() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool boo = prefs.getBool('isGuest') ?? false;
    setState(() {
      isGuest = boo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const HomeRoute(),
        if (!isGuest)
        const MentoringRoute(),
        const TicketsRoute(),
        const ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
            selectedFontSize: 12,
            backgroundColor: kSecondaryColor,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: kDefaultTextColor,
            // selectedIconTheme: const IconThemeData(color: kPrimaryColor),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: AssetsGen.icons.home.svg(),
                activeIcon: AssetsGen.icons.home.svg(
                  colorFilter: const ColorFilter.mode(
                    kPrimaryColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Home',
              ),
              if (!isGuest)
                BottomNavigationBarItem(
                  icon: AssetsGen.icons.supervisorAccount.svg(),
                  activeIcon: AssetsGen.icons.supervisorAccount.svg(
                    colorFilter: const ColorFilter.mode(
                      kPrimaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'Mentoring',
                ),
              BottomNavigationBarItem(
                icon: AssetsGen.icons.confirmationNumber.svg(),
                activeIcon: AssetsGen.icons.confirmationNumber.svg(
                  colorFilter: const ColorFilter.mode(
                    kPrimaryColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'My tickets',
              ),
              BottomNavigationBarItem(
                icon: AssetsGen.icons.accountCircle.svg(),
                activeIcon: AssetsGen.icons.accountCircle.svg(
                  colorFilter: const ColorFilter.mode(
                    kPrimaryColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
