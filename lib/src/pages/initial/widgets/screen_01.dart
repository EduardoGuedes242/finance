import 'package:app_finance/src/ui/theme/app_fonts.dart';
import 'package:app_finance/src/ui/widgets/title.dart';
import 'package:flutter/material.dart';

class ScreenInitial01 extends StatelessWidget {
  const ScreenInitial01({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EGTitle(text: 'Screen Initial 01'),
          const SizedBox(height: 20),
          Text(
            'Welcome to the initial screen of the app! Here you can find '
            'information about how to use the app and its features.',
            style: AppFonts.textStandart,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
