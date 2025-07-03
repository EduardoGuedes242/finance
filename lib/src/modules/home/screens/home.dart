import 'package:app_finance/src/modules/home/models/totalizador_response.dart';
import 'package:app_finance/src/modules/home/screens/add_expanse/categorie.dart';
import 'package:app_finance/src/modules/home/service/movimentacao_service.dart';
import 'package:app_finance/src/modules/home/widgets/chart_home.dart';
import 'package:app_finance/src/core/ui/theme/app_colors.dart';
import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final _movimentacaoService = MovimentacaoService();
  TotalizadorResponse totalizadorMovimentacoes = TotalizadorResponse(
    receita: 0.0,
    despesa: 0.0,
    total: 0.0,
  );

  void _loadTotalizadorMovimentacoes() async {
    try {
      final resultado = await _movimentacaoService.buscarTotalizador();
      if (mounted) {
        setState(() {
          totalizadorMovimentacoes = resultado;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao carregar totalizador: $e')),
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();

    _loadTotalizadorMovimentacoes();
  }

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
                value:
                    'R\$ ${totalizadorMovimentacoes.despesa.toStringAsFixed(2)}',
                color: AppColors.primary09,
              ),
              EGChartCardHome(
                title: 'Receita',
                value:
                    'R\$ ${totalizadorMovimentacoes.receita.toStringAsFixed(2)}',
                color: AppColors.primary04,
              ),
            ],
          ),
          SizedBox(height: 20),
          EGChartCardHome(
            title: 'Saldo',
            value: 'R\$ ${totalizadorMovimentacoes.total.toStringAsFixed(2)}',
            color: AppColors.primary06,
            fullWidth: true,
          ),
          SizedBox(height: 10),
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
