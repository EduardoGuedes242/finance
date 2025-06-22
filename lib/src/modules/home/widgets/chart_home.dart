import 'package:app_finance/src/core/ui/theme/app_colors.dart';
import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class EGChartCardHome extends StatelessWidget {
  const EGChartCardHome({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    this.fullWidth = false,
  });
  final String title;
  final String value;
  final Color color;
  final bool? fullWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: fullWidth! ? 99 : 81,
      width:
          fullWidth!
              ? MediaQuery.of(context).size.width * 0.95
              : MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppFonts.textTitle.copyWith(
                color: AppColors.highlight001,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              value,
              style: AppFonts.textTitle.copyWith(color: AppColors.highlight001),
            ),
          ],
        ),
      ),
    );
  }
}
