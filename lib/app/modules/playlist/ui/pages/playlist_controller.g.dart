// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PlaylistController = BindInject(
  (i) => PlaylistController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlaylistController on _PlaylistControllerBase, Store {
  Computed<List<Playlist>> _$listComputed;

  @override
  List<Playlist> get list =>
      (_$listComputed ??= Computed<List<Playlist>>(() => super.list,
              name: '_PlaylistControllerBase.list'))
          .value;

  final _$playlistsAtom = Atom(name: '_PlaylistControllerBase.playlists');

  @override
  ObservableList<Playlist> get playlists {
    _$playlistsAtom.reportRead();
    return super.playlists;
  }

  @override
  set playlists(ObservableList<Playlist> value) {
    _$playlistsAtom.reportWrite(value, super.playlists, () {
      super.playlists = value;
    });
  }

  final _$searchAtom = Atom(name: '_PlaylistControllerBase.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$_PlaylistControllerBaseActionController =
      ActionController(name: '_PlaylistControllerBase');

  @override
  void updateSearch(String value) {
    final _$actionInfo = _$_PlaylistControllerBaseActionController.startAction(
        name: '_PlaylistControllerBase.updateSearch');
    try {
      return super.updateSearch(value);
    } finally {
      _$_PlaylistControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void add(Playlist playlist) {
    final _$actionInfo = _$_PlaylistControllerBaseActionController.startAction(
        name: '_PlaylistControllerBase.add');
    try {
      return super.add(playlist);
    } finally {
      _$_PlaylistControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
playlists: ${playlists},
search: ${search},
list: ${list}
    ''';
  }
}
