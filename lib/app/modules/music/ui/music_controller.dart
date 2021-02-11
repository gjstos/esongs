import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../domain/entities/music.dart';

part 'music_controller.g.dart';

ObservableList<Musica> _gen() {
  return List.generate(
    10,
    (index) => Musica(nome: 'Música $index', id: index, duracao: index * 5 + 1),
  ).asObservable();
}

@Injectable()
class MusicController = _MusicControllerBase with _$MusicController;

abstract class _MusicControllerBase with Store {
  @observable
  ObservableList<Musica> musicas = _gen();
  @observable
  String search = '';

  TextEditingController editingController = TextEditingController();

  @action
  void updateSearch(String value) => search = value;

  @action
  void add(Musica musica) => musicas.add(musica);

  @computed
  List<Musica> get list {
    if (search.isNotEmpty) {
      return musicas
          .where((e) => _lower(e.nome).contains(_lower(search)))
          .toList();
    }

    return musicas;
  }

  String _lower(String str) => str.toLowerCase();
}
