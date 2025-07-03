import 'package:app_finance/src/core/ui/theme/app_fonts.dart';
import 'package:app_finance/src/core/ui/widgets/button.dart';
import 'package:app_finance/src/core/ui/widgets/edit.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile_picture.png'),
        ),
        SizedBox(height: 20),
        Text(
          'Eduardo Guedes',
          style: AppFonts.textTitle.copyWith(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        EGEdit(
          controller: TextEditingController(),
          title: 'Nome',
          hintText: 'Nome completo',
        ),
        const SizedBox(height: 20),
        EGEdit(
          controller: TextEditingController(),
          title: 'Login',
          hintText: 'Seu login',
        ),
        const SizedBox(height: 20),
        EGEdit(
          controller: TextEditingController(),
          title: 'Senha',
          hintText: 'Password',
        ),
        const SizedBox(height: 20),
        EGEdit(
          controller: TextEditingController(),
          title: 'Whatsapp',
          hintText: 'Numero do seu WhatsApp',
        ),
        const SizedBox(height: 40),
        EGButton(title: 'Atualizar', function: () {}),
      ],
    );
  }
}
