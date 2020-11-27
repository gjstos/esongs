import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'custom_divider.dart';
import 'gradient_button.dart';

class LoginCard extends StatefulWidget {
  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  final _key = GlobalKey();
  double _widthSize = 0.0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _widthSize = _key.currentContext.size.width;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 396.0,
        minWidth: 270.0,
      ),
      child: Card(
        key: _key,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintMaxLines: 1,
                  hintText: 'username',
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
                  hintText: 'password',
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 20),
              GradientButton(
                onPressed: () {
                  Modular.to.pushReplacementNamed('/home');
                },
              ),
              const SizedBox(height: 20),
              CustomDivider(widthSize: _widthSize),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Text(
                      "Novo usuário?",
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                  ),
                  SizedBox(),
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
                  )
                ],
              )
            ],
          ),
        ),
        color: Colors.white,
        elevation: 10.0,
      ),
    );
  }
}
