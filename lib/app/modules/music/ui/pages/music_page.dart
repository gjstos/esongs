import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
                controller: controller.editingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Pesquisar",
                  hintStyle: TextStyle(),
                ),
                textInputAction: TextInputAction.search,
                textAlignVertical: TextAlignVertical.bottom,
                onChanged: controller.updateSearch,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: Scrollbar(
              child: Observer(
                builder: (_) {
                  return ListView.separated(
                    itemCount: controller.list.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () async {
                          await Modular.to.pushNamed(
                            '/music/music-form',
                            arguments: controller.list[index],
                          );

                          print(controller.list[index].nome);
                        },
                        leading: CircleAvatar(
                          child: Text(
                            _circularText(controller.list[index].nome),
                          ),
                        ),
                        title: Text(controller.list[index].nome),
                        subtitle: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Artista:'),
                            Text('Gêneros:'),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, __) {
                      return SizedBox(height: 10);
                    },
                  );
                },
              ),
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

  String _circularText(String string) {
    var sufix = string.split(' ')[1];
    var prefix = string[0].toUpperCase();
    return '$prefix$sufix';
  }
}
