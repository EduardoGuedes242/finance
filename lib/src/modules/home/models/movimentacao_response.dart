class MovimentacaoResponse {
  final String usuario;
  final String categoria;
  final String movimentacaoId;
  final String tipo;
  final String descricao;
  final double valor;
  final String data;
  final String dataCriacao;

  MovimentacaoResponse({
    required this.usuario,
    required this.categoria,
    required this.movimentacaoId,
    required this.tipo,
    required this.descricao,
    required this.valor,
    required this.data,
    required this.dataCriacao,
  });

  factory MovimentacaoResponse.fromJson(Map<String, dynamic> json) {
    return MovimentacaoResponse(
      usuario: json['usuario'],
      categoria: json['categoria'],
      movimentacaoId: json['movimentacaoId'],
      tipo: json['tipo'],
      descricao: json['descricao'],
      valor: (json['valor'] as num).toDouble(),
      data: json['data'],
      dataCriacao: json['dataCriacao'],
    );
  }
}
