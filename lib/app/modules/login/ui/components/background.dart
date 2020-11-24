import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Color top;
  final Color bottom;

  const Background({Key key, @required this.top, @required this.bottom})
      : assert(top != null && bottom != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: display.height * 0.4,
          color: top,
        ),
        Container(
          height: display.height * 0.6,
          color: bottom,
        ),
      ],
    );
  }
}
