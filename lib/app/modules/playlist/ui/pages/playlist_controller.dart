import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/entities/playlist.dart';

part 'playlist_controller.g.dart';

@Injectable()
class PlaylistController = _PlaylistControllerBase with _$PlaylistController;

ObservableList<Playlist> _gen() {
  return List.generate(
    10,
    (index) => Playlist(nome: 'Playlist $index', status: Status.ativo),
  ).asObservable();
}

abstract class _PlaylistControllerBase with Store {
  @observable
  ObservableList<Playlist> playlists = _gen();
  @observable
  String search = '';

  TextEditingController editingController = TextEditingController();

  @action
  void updateSearch(String value) => search = value;

  @action
  void add(Playlist playlist) => playlists.add(playlist);

  @computed
  List<Playlist> get list {
    if (search.isNotEmpty) {
      return playlists
          .where((e) => _lower(e.nome).contains(_lower(search)))
          .toList();
    }

    return playlists;
  }

  String _lower(String str) => str.toLowerCase();
}
