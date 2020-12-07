import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../components/gradient_button.dart';
import '../../../components/login_card.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginCard(
      children: [
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            labelText: 'Nome',
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            labelText: 'Usuário',
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            labelText: 'Senha',
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            labelText: 'Repita a Senha',
          ),
        ),
        const SizedBox(height: 20),
        GradientButton(
          onPressed: () {
            Modular.to.pushReplacementNamed('/home');
          },
          label: 'Cadastrar',
        ),
      ],
    );
  }
}
