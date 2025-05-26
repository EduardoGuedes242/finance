import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:app_finance/src/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EGEdit extends StatefulWidget {
  const EGEdit({
    super.key,
    required this.controller,
    required this.hintText,
    this.pathIcon = '',
  });

  final TextEditingController controller;
  final String hintText;
  final String pathIcon;

  @override
  State<EGEdit> createState() => _EGEditState();
}

class _EGEditState extends State<EGEdit> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: 60,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          suffixIcon:
              widget.pathIcon.isNotEmpty
                  ? Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: SvgPicture.asset(
                      widget.pathIcon,
                      width: 20,
                      height: 15,
                      fit: BoxFit.scaleDown,
                    ),
                  )
                  : null,
          hintText: widget.hintText,
          hintStyle: AppFonts.textHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.primary03, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.primary03, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.primary09, width: 1.5),
          ),
        ),
      ),
    );
  }
}
