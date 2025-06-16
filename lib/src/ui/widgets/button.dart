import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:app_finance/src/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EGButton extends StatefulWidget {
  const EGButton({
    super.key,
    required this.title,
    required this.function,
    this.pathIcon = '',
  });
  final String title;
  final Function function;
  final String pathIcon;

  @override
  State<EGButton> createState() => _EGButtonState();
}

class _EGButtonState extends State<EGButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.function(),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.8,
        height: 51,
        decoration: BoxDecoration(
          color: AppColors.primary09,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.pathIcon.isNotEmpty
                ? Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset(
                    color: Colors.white,
                    widget.pathIcon,

                    fit: BoxFit.scaleDown,
                  ),
                )
                : SizedBox(),

            Text(widget.title, style: AppFonts.textButton),
          ],
        ),
      ),
    );
  }
}
