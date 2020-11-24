import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'gradient_button.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 396.0,
        minWidth: 270.0,
      ),
      child: Card(
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
            ],
          ),
        ),
        color: Colors.white,
        elevation: 10.0,
      ),
    );
  }
}
