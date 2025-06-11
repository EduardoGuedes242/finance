import 'package:app_finance/src/pages/home/homepage.dart';
import 'package:app_finance/src/pages/initial/widgets/screen_01.dart';
import 'package:app_finance/src/pages/initial/widgets/screen_02.dart';
import 'package:app_finance/src/pages/initial/widgets/screen_03.dart';
import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:app_finance/src/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final telas = [ScreenInitial01(), ScreenInitial02(), ScreenInitial03()];

  int index = 0;
  void changeScreen() {
    setState(() {
      index = (index + 1) % telas.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.highlight001,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            telas[index],

            Spacer(),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 400),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: Row(
                key: ValueKey<int>(index),
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < telas.length; i++)
                    AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color:
                            index == i
                                ? AppColors.primary06
                                : AppColors.primary01,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
            ),

            SizedBox(height: 20),
            EGButton(
              title: 'Continuar',
              function: () {
                if (index == telas.length - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Homepage();
                      },
                    ),
                  );
                }
                changeScreen();
              },
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
