import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double widthSize;

  const CustomDivider({Key key, @required this.widthSize})
      : assert(widthSize != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
      ),
      height: 1.8,
      width: widthSize * 0.8,
    );
  }
}
