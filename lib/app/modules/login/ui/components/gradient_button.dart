import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String label;
  final List<Color> colors;
  final VoidCallback onPressed;

  const GradientButton({
    Key key,
    @required this.onPressed,
    this.colors = const [
      Color(0xFF0D47A1),
      Color(0xFF1976D2),
      Color(0xFF42A5F5),
    ],
    @required this.label,
  })  : assert(onPressed != null),
        assert(label != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Ink(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          height: 45.0,
          width: double.infinity,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          gradient: LinearGradient(
            colors: colors,
          ),
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.all(0.0),
    );
  }
}
