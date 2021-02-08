import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'playlist_controller.dart';

class PlaylistPage extends StatefulWidget {
  final String title;
  const PlaylistPage({Key key, this.title = "Playlist"}) : super(key: key);

  @override
  _PlaylistPageState createState() => _PlaylistPageState();
}

class _PlaylistPageState
    extends ModularState<PlaylistPage, PlaylistController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Playlists'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        tooltip: 'Nova Playlist',
      ),
    );
  }
}
