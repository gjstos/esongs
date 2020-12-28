import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../components/login_card.dart';
import '../../login/login_page.dart';
import '../../sign_in/sign_in_page.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginCard(
      children: [
        OpenContainer(
          closedBuilder: (_, openContainer) {
            return _customButtom(
              text: 'Cadastrar',
              onPressed: openContainer,
              color: Colors.blue,
            );
          },
          openBuilder: (_, closeContainer) {
            return SignInPage();
          },
        ),
        const SizedBox(height: 15),
        OpenContainer(
          closedBuilder: (_, openContainer) {
            return _customButtom(
              text: 'Login',
              onPressed: openContainer,
              color: Colors.blue[900],
            );
          },
          openBuilder: (_, closeContainer) {
            return LoginPage();
          },
        ),
      ],
    );
  }

  Widget _customButtom({
    String route,
    VoidCallback onPressed,
    @required Color color,
    @required String text,
  }) {
    return RaisedButton(
      textColor: Colors.white,
      child: Ink(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          height: 45.0,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      onPressed: onPressed ??
          () {
            Modular.link.pushNamed(route);
          },
      padding: const EdgeInsets.all(0.0),
    );
  }
}
