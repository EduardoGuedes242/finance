import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:app_finance/src/ui/theme/app_fonts.dart';
import 'package:app_finance/src/ui/widgets/app_bar_back.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            EGAppbarBack(title: 'Categorias'),
            SizedBox(height: 20),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Needs', style: AppFonts.textSubTitle16),
                    SizedBox(height: 5),
                    Divider(color: AppColors.primary06, height: 1),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategorieItem(),
                        CategorieItem(),
                        CategorieItem(),
                        CategorieItem(),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Needs', style: AppFonts.textSubTitle16),
                    SizedBox(height: 5),
                    Divider(color: AppColors.primary06, height: 1),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategorieItem(),
                        CategorieItem(),
                        CategorieItem(),
                        CategorieItem(),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),

            Spacer(),
            EGButton(title: 'Continuar', function: () {}),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class CategorieItem extends StatelessWidget {
  const CategorieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.primary01,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(Icons.shopping_cart_outlined, color: AppColors.primary06),
        ),
        SizedBox(height: 5),
        Text(
          'Compras',
          style: AppFonts.textSubTitle16.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
