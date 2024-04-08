import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class SduOnboarding extends StatefulWidget {
  const SduOnboarding({super.key});

  @override
  State<SduOnboarding> createState() => _SduOnboardingState();
}

class _SduOnboardingState extends State<SduOnboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Replace with your actual images
  final List<Widget> _pages = [
    FlutterLogo(textColor: Colors.red), // Placeholder for your images
    FlutterLogo(textColor: Colors.green), // Placeholder for your images
    FlutterLogo(textColor: Colors.blue), // Placeholder for your images
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sdugram'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
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
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                onSecondaryPressed: () {
                  _pageController.jumpToPage(_pages.length - 1);
                },
              )),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(int index) {
    return Container(
      width: 6.0,
      height: 6.0,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.white : kLightGrey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }

}
