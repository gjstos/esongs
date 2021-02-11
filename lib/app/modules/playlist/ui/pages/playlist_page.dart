import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/entities/playlist.dart';
import 'playlist_controller.dart';

class PlaylistPage extends StatefulWidget {
  final Playlist playlist;
  const PlaylistPage({
    Key key,
    this.playlist,
  }) : super(key: key);

  @override
  _PlaylistPageState createState() => _PlaylistPageState();
}

class _PlaylistPageState
    extends ModularState<PlaylistPage, PlaylistController> {
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
                        onTap: () {
                          Modular.to.pushNamed(
                            '/playlist/playlist-form',
                            arguments: controller.list[index],
                          );
                        },
                        leading: CircleAvatar(
                          child: Text(
                            _circularText(controller.list[index].nome),
                          ),
                        ),
                        title: Text(controller.list[index].nome),
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
        onPressed: () {},
        tooltip: 'Nova Playlist',
      ),
    );
  }

  String _circularText(String string) {
    var sufix = string.split(' ')[1];
    var prefix = string.substring(0, 2).toUpperCase();
    return '$prefix$sufix';
  }
}
