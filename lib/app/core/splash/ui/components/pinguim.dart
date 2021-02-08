import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Pinguim extends StatelessWidget {
  final double height;

  const Pinguim({Key key, @required this.height})
      : assert(height != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: FlareActor(
        'assets/penguin_music.flr',
        alignment: Alignment.center,
        fit: BoxFit.fitHeight,
        animation: 'walk',
      ),
    );
  }
}
