class LoginResponse {
  final String token;
  final String nome;

  LoginResponse({required this.token, required this.nome});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(token: json['token'], nome: json['nome']);
  }
}
