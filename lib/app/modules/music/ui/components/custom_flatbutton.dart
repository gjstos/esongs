import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final double fontSize;
  final TextStyle textStyle;
  final bool enableFeedback;

  const CustomFlatButton({
    Key key,
    @required this.label,
    @required this.onTap,
    this.fontSize,
    this.textStyle,
    this.enableFeedback = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Text(
            label,
            style: textStyle ??
                TextStyle(
                  fontSize: fontSize ?? 15,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
