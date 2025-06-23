class MovimentacaoRequest {
  final String cetegoria;
  final String tipo;
  final String descricao;
  final double valor;
  final String data;

  MovimentacaoRequest({
    required this.cetegoria,
    required this.tipo,
    required this.descricao,
    required this.valor,
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'categoria': cetegoria,
      'tipo': tipo,
      'descricao': descricao,
      'valor': valor,
      'data': data,
    };
  }
}
