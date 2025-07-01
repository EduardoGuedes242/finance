import 'package:app_finance/src/core/ui/theme/app_colors.dart';
import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EGEdit extends StatefulWidget {
  const EGEdit({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.pathIcon = '',
  });

  final TextEditingController controller;
  final String title;
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
      height: 87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title, style: AppFonts.textTitleEdit),
          SizedBox(
            height: 56,
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
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColors.primary06, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColors.primary06, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.primary09,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EGEditData extends StatefulWidget {
  const EGEditData({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
  });

  final TextEditingController controller;
  final String title;
  final String hintText;

  @override
  State<EGEditData> createState() => _EGEditDataState();
}

class _EGEditDataState extends State<EGEditData> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: 87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title, style: AppFonts.textTitleEdit),
          SizedBox(
            height: 56,
            child: TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: GestureDetector(
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                      ).then((selectedDate) {
                        if (selectedDate != null) {
                          widget.controller.text =
                              '${selectedDate.day.toString().padLeft(2, '0')}/${selectedDate.month.toString().padLeft(2, '0')}/${selectedDate.year}';
                        }
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/icons/edit/calendar.svg',
                      width: 20,
                      height: 15,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),

                hintText: widget.hintText,
                hintStyle: AppFonts.textHint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColors.primary06, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: AppColors.primary06, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.primary09,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
