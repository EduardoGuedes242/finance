import 'package:app_finance/src/core/ui/theme/app_colors.dart';
import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class EGAppbarBack extends StatelessWidget {
  const EGAppbarBack({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.arrow_back_ios_new, color: AppColors.primary06, size: 22),

          Text(title, style: AppFonts.textSubTitle),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
