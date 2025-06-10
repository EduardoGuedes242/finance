import 'package:app_finance/src/pages/initial/widgets/screen_01.dart';
import 'package:app_finance/src/pages/initial/widgets/screen_02.dart';
import 'package:app_finance/src/pages/initial/widgets/screen_03.dart';
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
      index = (index + 1) % telas.length; // Cycle through screens
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            telas[index], // Screen 01
            SizedBox(height: 20),
            EGButton(
              title: 'Continuar',
              function: () {
                changeScreen(); // Change to the next screen
              },
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
