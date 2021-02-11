import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/playlist.dart';

part 'form_page.g.dart';

@Injectable()
class PlaylistFormController = _PlaylistFormControllerBase
    with _$PlaylistFormController;

abstract class _PlaylistFormControllerBase with Store {
  TextEditingController nomeController;
  TextEditingController statusController;

  void init(Playlist playlist) {
    if (playlist != null) {
      nomeController = TextEditingController.fromValue(
        TextEditingValue(text: playlist.nome),
      );
      statusController = TextEditingController.fromValue(
        TextEditingValue(text: playlist.status.toString()),
      );
    } else {
      nomeController = TextEditingController();
      statusController = TextEditingController();
    }
  }
}
