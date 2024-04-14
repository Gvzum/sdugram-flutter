import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

@RoutePage()
class SduOnboardingScreen extends StatefulWidget {
  const SduOnboardingScreen({super.key});

  @override
  State<SduOnboardingScreen> createState() => _SduOnboardingScreenState();
}

class _SduOnboardingScreenState extends State<SduOnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Replace with your actual images
  final List<Widget> _pages = [
    SizedBox(
        child: AssetsGen.images.onboarding1
            .image(filterQuality: FilterQuality.high)),
    SizedBox(
        child: AssetsGen.images.onboarding2
            .image(filterQuality: FilterQuality.high)),
    SizedBox(
        child: AssetsGen.images.onboarding3
            .image(filterQuality: FilterQuality.high)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 35),
              child: Row(
                children: [
                  AssetsGen.images.logo.image(height: 50),
                  SizedBox(width: 8,),
                  Text('Sdugram', style: TextStyle(fontFamily: 'Poppins', fontSize: 24),),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() => _currentPage = page);
                },
                children: _pages,
              ),
            ),
            Container(
              height: 10,
              width: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    _pages.length, (index) => _buildPageIndicator(index)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: SduButtonCell.row(
                  primaryLabel: 'Next',
                  secondaryLabel: 'Skip',
                  onPrimaryPressed: () {
                    if (_currentPage < _pages.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      context.router.replaceNamed('/sdugram');
                    }
                  },
                  onSecondaryPressed: () {
                    context.router.replaceNamed('/sdugram');
                  },
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildPageIndicator(int index) {
    return Container(
      width: 6.0,
      height: 6.0,
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.white : kLightGrey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
