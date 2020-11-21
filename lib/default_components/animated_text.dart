import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';

class AnimatedText extends StatelessWidget {
  AnimatedText(this.height, this.string, this.xboxStyle, this.playstationStyle);
  final double height;
  final String string;
  final TextStyle xboxStyle;
  final TextStyle playstationStyle;
  @override
  Widget build(BuildContext context) {
    final double sh = MediaQuery.of(context).size.height;
    return SizedBox(
      height: sh * height,
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 200),
          style:
              HomeScreenState.xboxLayout == true ? xboxStyle : playstationStyle,
          child: Text(
            string,
          ),
        ),
      ),
    );
  }
}
