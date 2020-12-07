import 'package:flutter/material.dart';

import '../../components/background.dart';
import 'components/options.dart';

class OptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
                    Options(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
