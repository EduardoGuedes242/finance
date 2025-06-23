// ignore_for_file: use_build_context_synchronously

import 'package:app_finance/src/core/config/api_config.dart';
import 'package:app_finance/src/core/ui/widgets/button.dart';
import 'package:app_finance/src/core/ui/widgets/edit.dart';
import 'package:app_finance/src/modules/auth/models/login_request.dart';
import 'package:app_finance/src/modules/auth/service/auth_service.dart';
import 'package:app_finance/src/modules/auth/service/auth_storage.dart';
import 'package:app_finance/src/modules/home/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginController = TextEditingController();
  final _senhaController = TextEditingController();
  final _authService = AuthService();

  @override
  void initState() {
    super.initState();
    _loadSavedLogin();
  }

  Future<void> _loadSavedLogin() async {
    final login = await AuthStorage.getLogin();
    if (login != null && login.isNotEmpty) {
      _loginController.text = login;
    }
  }

  void _handleLogin() async {
    final login = _loginController.text.trim();
    final senha = _senhaController.text;

    try {
      final response = await _authService.login(
        LoginRequest(login: login, senha: senha),
      );

      await AuthStorage.saveToken(response.token);
      ApiConfig.token = response.token;
      await AuthStorage.saveNome(response.nome);
      await AuthStorage.saveLogin(login);

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Homepage()),
        (route) => false, // Corrigido: não deixar voltar
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EGEdit(
            controller: _loginController,
            title: 'Login',
            hintText: 'Informe seu login',
          ),
          EGEdit(
            controller: _senhaController,
            title: 'Senha',
            hintText: 'Digite sua senha',
          ),
          EGButton(title: 'Entrar', function: _handleLogin),
        ],
      ),
    );
  }
}
