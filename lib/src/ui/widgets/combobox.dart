import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:app_finance/src/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EGCombobox extends StatefulWidget {
  const EGCombobox({
    super.key,
    required this.array,
    required this.title,
    required this.hintText,
    this.pathIcon = 'assets/icons/edit/arrow-combobox.svg',
  });

  final Map<int, String> array;
  final String title;
  final String hintText;
  final String pathIcon;

  @override
  State<EGCombobox> createState() => _EGComboboxState();
}

class _EGComboboxState extends State<EGCombobox> {
  int? selectedValue;

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
            height: 59,
            child: DropdownButtonFormField<int>(
              value: selectedValue,
              isExpanded: true,
              icon: SizedBox.shrink(), // Hide the default dropdown icon
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                suffixIcon:
                    widget.pathIcon.isNotEmpty
                        ? GestureDetector(
                          onTap: () {
                            print('Teste de clique no ícone do combobox');
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: SvgPicture.asset(
                              widget.pathIcon,
                              width: 20,
                              height: 15,
                              fit: BoxFit.scaleDown,
                            ),
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
              items:
                  widget.array.entries
                      .map(
                        (entry) => DropdownMenuItem<int>(
                          value: entry.key,
                          child: Text(
                            entry.value,
                            style: AppFonts.textTitleEdit,
                          ),
                        ),
                      )
                      .toList(),
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
