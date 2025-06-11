import 'package:app_finance/src/ui/theme/app_colors.dart' as my_colors;
import 'package:elegant_nav_bar/elegant_nav_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: my_colors.AppColors.highlight001,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Text(
              'Welcome to the Home Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: my_colors.AppColors.primary09,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElegantBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          NavigationItem(label: 'Home', iconWidget: Icon(Icons.home)),
          NavigationItem(label: 'Search', iconWidget: Icon(Icons.search)),
          NavigationItem(label: 'Profile', iconWidget: Icon(Icons.person)),
          NavigationItem(label: 'Settings', iconWidget: Icon(Icons.settings)),
        ],
        // Optional: Customize indicator
        indicatorPosition: IndicatorPosition.bottom,
        indicatorShape: IndicatorShape.dot,

        // Optional: Enable floating mode
        isFloating: true,
        floatingMargin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        floatingBorderRadius: 24.0,
      ),
    );
  }
}
