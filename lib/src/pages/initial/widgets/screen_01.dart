import 'package:app_finance/src/ui/theme/app_fonts.dart';
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
          Image.asset(
            'assets/images/initial/initial-01.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 5),
          Text('Take Control of Your Finances', style: AppFonts.textTitle),
          const SizedBox(height: 10),
          Text(
            'Start tracking your expenses, saving money, and '
            'achieving your financial goals. ',
            style: AppFonts.textStandart,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
