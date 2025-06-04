import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppFonts {
  static const primaryFont = 'Inter';

  static const TextStyle textButton = TextStyle(
    fontFamily: primaryFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.highlight001,
  );

  static const TextStyle textTitle = TextStyle(
    fontFamily: primaryFont,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.primary09,
  );

  static const TextStyle textHint = TextStyle(
    fontFamily: primaryFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primary06,
  );

  static const TextStyle textTitleEdit = TextStyle(
    fontFamily: primaryFont,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primary09,
  );
}
