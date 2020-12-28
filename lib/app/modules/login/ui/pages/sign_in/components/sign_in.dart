import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
            Fluttertoast.showToast(
              msg: 'Cadastro realizado com sucesso!',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.grey[200],
              textColor: Colors.black,
              fontSize: 16.0,
            );
            Navigator.of(context).pop();
          },
          label: 'Cadastrar',
        ),
      ],
    );
  }
}
