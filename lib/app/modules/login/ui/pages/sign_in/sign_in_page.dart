import 'package:flutter/material.dart';

import '../../components/background.dart';
import 'components/sign_in.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
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
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: _size.height * 0.1),
                    Text(
                      "e-songs",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: _size.height * 0.1),
                    SignIn(),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back, color: Colors.blue),
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      ),
    );
  }
}