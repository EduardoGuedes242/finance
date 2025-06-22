import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class EGTitle extends StatelessWidget {
  final String text;

  const EGTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppFonts.textTitle);
  }
}
