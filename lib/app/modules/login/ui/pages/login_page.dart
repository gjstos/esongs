import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../components/background.dart';
import '../components/login_card.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[600],
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Background(
              bottom: Colors.white,
              top: Colors.blue,
            ),
            Positioned(
              top: 40,
              left: 40,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "e-songs\n",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Nunca foi tão fácil gerenciar suas músicas!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: LoginCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
