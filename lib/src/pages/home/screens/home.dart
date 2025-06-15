import 'package:app_finance/src/pages/home/screens/add_expanse/categorie.dart';
import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SelectCategorieScreen(),
            ),
          );
        },
        backgroundColor: AppColors.primary06,
        child: Icon(Icons.add, color: AppColors.highlight001),
      ),
    );
  }
}
