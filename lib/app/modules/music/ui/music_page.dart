import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/custom_flatbutton.dart';
import 'music_controller.dart';

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
      appBar: AppBar(
        title: Text('Nova música'),
      ),
      body: Form(
        child: Scrollbar(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomFlatButton(
                      label: 'Cancelar',
                      onTap: () {
                        Modular.navigator.pop();
                      },
                      textStyle: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    CustomFlatButton(
                      label: 'Salvar',
                      onTap: () {
                        Modular.navigator.pop();
                      },
                      textStyle: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Icon(Icons.photo_camera, color: Colors.white),
                    minRadius: 40,
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Dados Básicos",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome da Música',
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Duração',
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 20),
              Text(
                "Dados Adicionais",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Album',
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Artista',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Flexible(
                    child: const SizedBox(height: 10),
                  ),
                  Flexible(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Data do Lançamento',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
