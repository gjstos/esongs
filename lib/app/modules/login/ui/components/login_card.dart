import 'package:flutter/material.dart';

class LoginCard extends StatefulWidget {
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  const LoginCard({
    Key key,
    @required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 396.0,
        minWidth: 270.0,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: widget.crossAxisAlignment,
            children: widget.children,
          ),
        ),
        color: Colors.white,
        elevation: 10.0,
      ),
    );
  }
}
