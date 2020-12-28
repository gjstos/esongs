import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/pinguim.dart';
import '../controllers/splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6))
        .then((_) => Modular.to.pushReplacementNamed('/login/options'));
  }

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Text(
                'e-songs',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.openSans().fontFamily,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Pinguim(height: display.height * 0.7),
            ),
          ],
        ),
      ),
    );
  }
}
