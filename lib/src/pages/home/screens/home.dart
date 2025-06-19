import 'package:app_finance/src/pages/home/screens/add_expanse/categorie.dart';
import 'package:app_finance/src/pages/home/widgets/chart_home.dart';
import 'package:app_finance/src/ui/theme/app_colors.dart';
import 'package:app_finance/src/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Otimo dia,',
                    style: AppFonts.textHint.copyWith(fontSize: 12),
                  ),
                  Text('Eduardo Guedes', style: AppFonts.textSubTitle),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EGChartCardHome(
                title: 'Despesa',
                value: 'R\$ 748,16',
                color: AppColors.primary09,
              ),
              EGChartCardHome(
                title: 'Receita',
                value: 'R\$ 1245,17',
                color: AppColors.primary04,
              ),
            ],
          ),
          SizedBox(height: 20),
          EGChartCardHome(
            title: 'Saldo',
            value: 'R\$ 497,01',
            color: AppColors.primary06,
            fullWidth: true,
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  height: 80,
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.primary01,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dados de transações',
                            style: AppFonts.textSubTitle,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
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
