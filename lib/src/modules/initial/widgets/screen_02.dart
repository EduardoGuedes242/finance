import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class ScreenInitial02 extends StatelessWidget {
  const ScreenInitial02({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/initial/financial-planning.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 5),
          Text('Simplify Your Budgeting', style: AppFonts.textTitle),
          const SizedBox(height: 10),
          Text(
            'Say goodbye to complex spreadsheets and confusing calculations.',
            style: AppFonts.textStandart,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
