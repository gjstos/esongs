import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../components/gradient_button.dart';
import '../../../components/login_card.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return LoginCard(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextFormField(
          autofocus: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintMaxLines: 1,
            labelText: 'Usuário',
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        TextFormField(
          autofocus: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintMaxLines: 1,
            labelText: 'Senha',
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
        ),
        FlatButton(
          child: Text(
            "Esqueceu a senha?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        GradientButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Olá de novo, debugger!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.grey[200],
              textColor: Colors.black,
              fontSize: 16.0,
            );
            Modular.to.pushReplacementNamed('/home');
          },
          label: 'Entrar',
        ),
      ],
    );
  }
}
