import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class ScreenInitial03 extends StatelessWidget {
  const ScreenInitial03({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/initial/business-accounting.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 5),
          Text('Achieve Financial Freedom', style: AppFonts.textTitle),
          const SizedBox(height: 10),
          Text(
            'Get the tools and insights you need to make smart '
            'financial decisions, save money, and build a secure future.',
            style: AppFonts.textStandart,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
