import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:app_finance/src/ui/theme/app_fonts.dart';
import 'package:app_finance/src/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class SelectCategorieScreen extends StatefulWidget {
  const SelectCategorieScreen({super.key});

  @override
  State<SelectCategorieScreen> createState() => SelectCategorieScreenState();
}

class SelectCategorieScreenState extends State<SelectCategorieScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(height: 100),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.primary06,
                  size: 20,
                ),
                Spacer(),
                Text('Select Category', style: AppFonts.textTitle),
                Spacer(),
              ],
            ),
          ),
          Spacer(),
          EGButton(title: 'title', function: () {}),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
