import 'package:app_finance/src/modules/home/models/movimentacao_response.dart';
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
  List<MovimentacaoResponse> listaMovimentacoes = [];

  void _loadMovimentacoes() async {
    try {
      final resultado = await _movimentacaoService.buscarMovimentacoes();
      if (mounted) {
        setState(() {
          listaMovimentacoes = resultado;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao carregar movimentações: $e')),
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadMovimentacoes();
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
              itemCount: listaMovimentacoes.length,
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
                            listaMovimentacoes[index].descricao,
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
