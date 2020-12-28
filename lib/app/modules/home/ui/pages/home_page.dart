import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('e-songs'),
        centerTitle: true,
        leading: SizedBox(),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            tooltip: 'Filtrar',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.sort),
            tooltip: 'Ordenar',
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Pesquisar",
                    hintStyle: TextStyle(),
                  ),
                  textInputAction: TextInputAction.search,
                  textAlignVertical: TextAlignVertical.bottom,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Modular.to.pushNamed('/music');
        },
        tooltip: 'Nova Música',
      ),
    );
  }
}
