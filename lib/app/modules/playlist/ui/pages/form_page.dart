import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/entities/playlist.dart';
import 'form_controller.dart';

class PlaylistFormPage extends StatefulWidget {
  final Playlist playlist;

  const PlaylistFormPage({Key key, this.playlist}) : super(key: key);

  @override
  _PlaylistFormPageState createState() => _PlaylistFormPageState();
}

class _PlaylistFormPageState
    extends ModularState<PlaylistFormPage, PlaylistFormController> {
  @override
  void initState() {
    super.initState();

    controller.init(widget.playlist);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
