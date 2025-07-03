import 'package:app_finance/src/core/ui/theme/app_colors.dart';
import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:app_finance/src/modules/home/models/movimentacao_response.dart';
import 'package:app_finance/src/modules/home/service/movimentacao_service.dart';
import 'package:app_finance/src/modules/home/widgets/item_transaction.dart';
import 'package:flutter/material.dart';

class ChartsPage extends StatefulWidget {
  const ChartsPage({super.key});

  @override
  State<ChartsPage> createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
  final _movimentacaoService = MovimentacaoService();
  String _selectedFilter = 'Despesa';
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
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.90,
            height: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primary09,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildAnimatedFilter('Despesa'),
                _buildAnimatedFilter('Receita'),
                _buildAnimatedFilter('Total'),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: listaMovimentacoes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: ItemTransactionWidget(
                    descricao: listaMovimentacoes[index].descricao,
                    data: listaMovimentacoes[index].data,
                    valor: listaMovimentacoes[index].valor,
                    tipo: listaMovimentacoes[index].tipo,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedFilter(String label) {
    final bool isSelected = _selectedFilter == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedFilter = label;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? AppColors.primary01 : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            style:
                isSelected ? AppFonts.textButtonSelect : AppFonts.textButton2,
            child: Text(label),
          ),
        ),
      ),
    );
  }
}
