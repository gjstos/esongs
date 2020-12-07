import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../components/gradient_button.dart';
import '../../../components/login_card.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginCard(
      children: [
        GradientButton(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          onPressed: () {
            Modular.link.pushNamed('/sign-in');
          },
          label: 'Novo Usuário?',
        ),
        const SizedBox(height: 15),
        GradientButton(
          label: 'Já possui Cadastro?',
          onPressed: () {
            Modular.link.pushNamed('/login');
          },
        ),
      ],
    );
  }
}
