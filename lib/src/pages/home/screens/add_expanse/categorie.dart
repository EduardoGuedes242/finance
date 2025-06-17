import 'package:app_finance/src/pages/home/screens/add_expanse/expansse.dart';
import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:app_finance/src/ui/theme/app_fonts.dart';
import 'package:app_finance/src/ui/widgets/app_bar_back.dart';
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
      body: ListView(
        children: [
          SizedBox(height: 40),
          EGAppbarBack(title: 'Categorias'),
          SizedBox(height: 20),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Wants', style: AppFonts.textSubTitle16),
                  SizedBox(height: 5),
                  Divider(color: AppColors.primary06, height: 1),
                  SizedBox(height: 15),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 0,
                    children: [
                      CategorieItem(
                        description: 'Lazer',
                        icon: Icons.local_activity,
                        idCategorie: 1,
                      ),
                      CategorieItem(
                        description: 'Compras',
                        icon: Icons.shopping_cart,
                        idCategorie: 2,
                      ),
                      CategorieItem(
                        description: 'Viagens',
                        icon: Icons.airplanemode_active,
                        idCategorie: 3,
                      ),
                      CategorieItem(
                        description: 'Presentes',
                        icon: Icons.card_giftcard,
                        idCategorie: 4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Wants', style: AppFonts.textSubTitle16),
                  SizedBox(height: 5),
                  Divider(color: AppColors.primary06, height: 1),
                  SizedBox(height: 15),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,

                    crossAxisSpacing: 20,
                    mainAxisSpacing: 0,
                    children: [
                      CategorieItem(
                        description: 'Lazer',
                        icon: Icons.local_activity,
                        idCategorie: 1,
                      ),
                      CategorieItem(
                        description: 'Compras',
                        icon: Icons.shopping_cart,
                        idCategorie: 2,
                      ),
                      CategorieItem(
                        description: 'Viagens',
                        icon: Icons.airplanemode_active,
                        idCategorie: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Wants', style: AppFonts.textSubTitle16),
                  SizedBox(height: 5),
                  Divider(color: AppColors.primary06, height: 1),
                  SizedBox(height: 15),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,

                    crossAxisSpacing: 20,
                    mainAxisSpacing: 0,
                    children: [
                      CategorieItem(
                        description: 'Lazer',
                        icon: Icons.local_activity,
                        idCategorie: 1,
                      ),
                      CategorieItem(
                        description: 'Compras',
                        icon: Icons.shopping_cart,
                        idCategorie: 2,
                      ),
                      CategorieItem(
                        description: 'Viagens',
                        icon: Icons.airplanemode_active,
                        idCategorie: 3,
                      ),
                      CategorieItem(
                        description: 'Presentes',
                        icon: Icons.card_giftcard,
                        idCategorie: 4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategorieItem extends StatelessWidget {
  const CategorieItem({
    super.key,
    required this.description,
    required this.icon,
    required this.idCategorie,
  });
  final String description;
  final IconData icon;
  final int idCategorie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ExpansseScreen(categoryDescription: description);
            },
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.primary01,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(icon, color: AppColors.primary06),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: AppFonts.textSubTitle16.copyWith(
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
