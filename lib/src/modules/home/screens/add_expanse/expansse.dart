import 'package:app_finance/src/core/ui/widgets/app_bar_back.dart';
import 'package:app_finance/src/core/ui/widgets/button.dart';
import 'package:app_finance/src/core/ui/widgets/combobox.dart';
import 'package:app_finance/src/core/ui/widgets/edit.dart';
import 'package:flutter/material.dart';

class ExpansseScreen extends StatelessWidget {
  const ExpansseScreen({super.key, required this.categoryDescription});
  final String categoryDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          EGAppbarBack(title: 'Registrar Movimentação'),
          SizedBox(height: 30),
          EGCombobox(
            array: {1: categoryDescription},
            title: 'Categoria',
            hintText: categoryDescription,
          ),
          SizedBox(height: 30),

          EGEdit(
            controller: TextEditingController(),
            title: 'R\$ Valor',
            hintText: 'R\$ 540,00',
          ),
          SizedBox(height: 30),

          EGEdit(
            controller: TextEditingController(),
            title: 'Data',
            hintText: '14/05/2025',
          ),
          SizedBox(height: 30),

          EGEdit(
            controller: TextEditingController(),
            title: 'Descrição',
            hintText: 'Ex: Compras no mercado',
          ),
          Spacer(),

          EGButton(title: 'Salvar', function: () {}),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
