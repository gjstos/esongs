// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MusicController = BindInject(
  (i) => MusicController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MusicController on _MusicControllerBase, Store {
  Computed<List<Musica>> _$listComputed;

  @override
  List<Musica> get list =>
      (_$listComputed ??= Computed<List<Musica>>(() => super.list,
              name: '_MusicControllerBase.list'))
          .value;

  final _$musicasAtom = Atom(name: '_MusicControllerBase.musicas');

  @override
  ObservableList<Musica> get musicas {
    _$musicasAtom.reportRead();
    return super.musicas;
  }

  @override
  set musicas(ObservableList<Musica> value) {
    _$musicasAtom.reportWrite(value, super.musicas, () {
      super.musicas = value;
    });
  }

  final _$searchAtom = Atom(name: '_MusicControllerBase.search');

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

  final _$_MusicControllerBaseActionController =
      ActionController(name: '_MusicControllerBase');

  @override
  void updateSearch(String value) {
    final _$actionInfo = _$_MusicControllerBaseActionController.startAction(
        name: '_MusicControllerBase.updateSearch');
    try {
      return super.updateSearch(value);
    } finally {
      _$_MusicControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void add(Musica musica) {
    final _$actionInfo = _$_MusicControllerBaseActionController.startAction(
        name: '_MusicControllerBase.add');
    try {
      return super.add(musica);
    } finally {
      _$_MusicControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
musicas: ${musicas},
search: ${search},
list: ${list}
    ''';
  }
}
