import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  DefaultText(this.height, this.string, this.style);
  final double height;
  final String string;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    final double sh = MediaQuery.of(context).size.height;
    return SizedBox(
      height: sh * height,
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Text(
          string,
          style: style,
        ),
      ),
    );
  }
}
