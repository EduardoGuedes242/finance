import 'package:app_finance/src/modules/home/screens/add_expanse/expansse.dart';
import 'package:app_finance/src/core/ui/theme/app_colors.dart';
import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:app_finance/src/core/ui/widgets/app_bar_back.dart';
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
                        idCategorie: 'e3c16d8e-5d4a-4b88-8c7d-9a1e3a6c12f4',
                      ),
                      CategorieItem(
                        description: 'Compras',
                        icon: Icons.shopping_cart,
                        idCategorie: 'e3c16d8e-5d4a-4b88-8c7d-9a1e3a6c12f4',
                      ),
                      CategorieItem(
                        description: 'Viagens',
                        icon: Icons.airplanemode_active,
                        idCategorie: 'e3c16d8e-5d4a-4b88-8c7d-9a1e3a6c12f4',
                      ),
                      CategorieItem(
                        description: 'Presentes',
                        icon: Icons.card_giftcard,
                        idCategorie: 'e3c16d8e-5d4a-4b88-8c7d-9a1e3a6c12f4',
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
  final String idCategorie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ExpansseScreen(categoriaId: idCategorie);
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
