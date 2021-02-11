import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/entities/music.dart';
import '../components/custom_flatbutton.dart';
import '../form_controller.dart';

class MusicFormPage extends StatefulWidget {
  final Musica musica;

  const MusicFormPage({Key key, @required this.musica}) : super(key: key);

  @override
  _MusicFormPageState createState() => _MusicFormPageState();
}

class _MusicFormPageState
    extends ModularState<MusicFormPage, MusicFormController> {
  @override
  void initState() {
    super.initState();

    controller.init(widget.musica);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova música'),
      ),
      body: Form(
        child: Scrollbar(
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomFlatButton(
                      label: 'Cancelar',
                      onTap: () {
                        Modular.navigator.pop();
                      },
                      textStyle: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    CustomFlatButton(
                      label: 'Salvar',
                      onTap: () {
                        var nome = controller.nomeController.text;
                        var duracao = controller.duracaoController.text;

                        widget.musica.nome = nome;
                        widget.musica.duracao = int.parse(duracao);

                        Modular.navigator.pop(context);
                      },
                      textStyle: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).accentColor,
                  child: Text(_circularText(widget.musica.nome)),
                  minRadius: 40,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Dados Básicos",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.nomeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome da Música',
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller.duracaoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Duração',
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 20),
              Text(
                "Dados Adicionais",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Album',
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Artista',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Flexible(
                    child: const SizedBox(height: 10),
                  ),
                  Flexible(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Data do Lançamento',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  String _circularText(String string) {
    var sufix = string.split(' ')[1];
    var prefix = string[0].toUpperCase();
    return '$prefix$sufix';
  }
}
