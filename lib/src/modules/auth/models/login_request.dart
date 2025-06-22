class LoginRequest {
  final String login;
  final String senha;

  LoginRequest({required this.login, required this.senha});

  Map<String, dynamic> toJson() {
    return {'login': login, 'senha': senha};
  }
}
