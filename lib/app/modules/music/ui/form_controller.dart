import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../domain/entities/music.dart';
part 'form_controller.g.dart';

@Injectable()
class MusicFormController = _MusicFormControllerBase with _$MusicFormController;

abstract class _MusicFormControllerBase with Store {
  TextEditingController nomeController;
  TextEditingController duracaoController;

  void init(Musica musica) {
    if (musica != null) {
      nomeController = TextEditingController.fromValue(
        TextEditingValue(text: musica.nome),
      );
      duracaoController = TextEditingController.fromValue(
        TextEditingValue(text: musica.duracao.toString()),
      );
    } else {
      nomeController = TextEditingController();
      duracaoController = TextEditingController();
    }
  }
}
