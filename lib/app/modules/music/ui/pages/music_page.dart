import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../music_controller.dart';

class MusicPage extends StatefulWidget {
  final String title;
  const MusicPage({Key key, this.title = "Music"}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends ModularState<MusicPage, MusicController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 30),
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
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text('$index')),
                  title: Text('Música $index'),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Artista:'),
                      Text('Gêneros:'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Modular.to.pushNamed('/music/music-form');
        },
        tooltip: 'Nova Música',
      ),
    );
  }
}
