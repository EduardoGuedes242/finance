import 'package:app_finance/src/core/ui/widgets/app_bar_back.dart';
import 'package:app_finance/src/core/ui/widgets/button.dart';
import 'package:app_finance/src/core/ui/widgets/edit.dart';
import 'package:app_finance/src/modules/home/models/movimentacao_request.dart';
import 'package:app_finance/src/modules/home/service/movimentacao_service.dart';
import 'package:flutter/material.dart';

class ExpansseScreen extends StatefulWidget {
  const ExpansseScreen({super.key, required this.categoriaId});
  final String categoriaId;

  @override
  State<ExpansseScreen> createState() => _ExpansseScreenState();
}

class _ExpansseScreenState extends State<ExpansseScreen> {
  final _valorController = TextEditingController();
  final _dataController = TextEditingController();
  final _descricaoController = TextEditingController();
  final _movimentacaoService = MovimentacaoService();

  void _registrarMovimentacao() async {
    final valor =
        _valorController.text.isEmpty
            ? 0.0
            : double.tryParse(
                  _valorController.text
                      .replaceAll('R\$', '')
                      .replaceAll(',', '.'),
                ) ??
                0.0;
    final data = _dataController.text;
    final descricao = _descricaoController.text;
    final categoria = widget.categoriaId;
    try {
      await _movimentacaoService.registrarMovimentcao(
        MovimentacaoRequest(
          cetegoria: categoria,
          tipo: 'despesa',
          descricao: descricao,
          valor: valor,
          data: data,
        ),
      );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          EGAppbarBack(title: 'Registrar Movimentação'),
          SizedBox(height: 30),
          EGEdit(
            controller: _valorController,
            title: 'R\$ Valor',
            hintText: 'R\$ 540,00',
          ),
          SizedBox(height: 30),

          EGEdit(
            controller: _dataController,
            title: 'Data',
            hintText: '14/05/2025',
          ),
          SizedBox(height: 30),

          EGEdit(
            controller: _descricaoController,
            title: 'Descrição',
            hintText: 'Ex: Compras no mercado',
          ),
          Spacer(),

          EGButton(title: 'Salvar', function: _registrarMovimentacao),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
