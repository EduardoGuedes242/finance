import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:app_finance/src/core/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ItemTransactionWidget extends StatelessWidget {
  const ItemTransactionWidget({
    super.key,
    required this.descricao,
    required this.data,
    required this.valor,
    required this.tipo,
  });

  final String descricao;
  final String data;
  final double valor;
  final String tipo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.primary01,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.card_giftcard, color: AppColors.primary06),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                descricao,
                style: AppFonts.textButtonSelect.copyWith(
                  fontSize: 14,
                  color: AppColors.primary09,
                ),
              ),
              SizedBox(height: 3),
              Text(data, style: AppFonts.textStandart),
            ],
          ),
          Spacer(),
          Text(
            '${tipo == 'despesa' ? '-' : '+'} R\$ ${valor.toStringAsFixed(2)}',
            style: AppFonts.textTitleEdit.copyWith(
              color: tipo == 'despesa' ? AppColors.red : AppColors.primary06,
            ),
          ),
        ],
      ),
    );
  }
}
