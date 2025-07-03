import 'package:app_finance/src/modules/home/screens/charts.dart';
import 'package:app_finance/src/modules/home/screens/home.dart';
import 'package:app_finance/src/modules/initial/widgets/screen_02.dart';
import 'package:app_finance/src/core/ui/theme/app_colors.dart';
import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final telas = [ScreenHome(), ChartsPage(), ScreenInitial02()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.highlight001,
      body: Center(child: telas[_currentIndex]),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.primary09,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () async {
                setState(() {
                  _currentIndex = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/navbar/home.svg',
                    color:
                        _currentIndex == 0
                            ? AppColors.highlight001
                            : AppColors.primary04,
                  ),
                  Text(
                    'Home',
                    style:
                        _currentIndex == 0
                            ? AppFonts.textIconSelect
                            : AppFonts.textIcon,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/navbar/chart.svg',
                    color:
                        _currentIndex == 1
                            ? AppColors.highlight001
                            : AppColors.primary04,
                  ),
                  Text(
                    'Movimentações',
                    style:
                        _currentIndex == 1
                            ? AppFonts.textIconSelect
                            : AppFonts.textIcon,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/navbar/wallet.svg',
                    color:
                        _currentIndex == 2
                            ? AppColors.highlight001
                            : AppColors.primary04,
                  ),
                  Text(
                    'Carteria',
                    style:
                        _currentIndex == 2
                            ? AppFonts.textIconSelect
                            : AppFonts.textIcon,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
