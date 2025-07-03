class TotalizadorResponse {
  final double receita;
  final double despesa;
  final double total;

  TotalizadorResponse({
    required this.receita,
    required this.despesa,
    required this.total,
  });

  factory TotalizadorResponse.fromJson(Map<String, dynamic> json) {
    return TotalizadorResponse(
      receita: (json['receita'] as num).toDouble(),
      despesa: (json['despesa'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );
  }
}
