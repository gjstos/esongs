import 'package:esongs/app/modules/login/ui/components/gradient_button.dart';
import 'package:esongs/app/modules/login/ui/components/login_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginCard(
      children: [
        GradientButton(
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
