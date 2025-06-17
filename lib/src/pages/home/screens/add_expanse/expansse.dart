import 'package:app_finance/src/ui/widgets/app_bar_back.dart';
import 'package:app_finance/src/ui/widgets/edit.dart';
import 'package:flutter/material.dart';

class ExpansseScreen extends StatelessWidget {
  const ExpansseScreen({super.key, required this.categoryDescription});
  final String categoryDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 40),
          EGAppbarBack(title: 'Registrar Movimentação'),
          SizedBox(height: 20),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EGEdit(
                    controller: TextEditingController(),
                    title: 'R\$ Valor',
                    hintText: 'R\$ 540,00',
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
