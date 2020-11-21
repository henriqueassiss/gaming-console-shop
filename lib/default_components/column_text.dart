import 'package:flutter/material.dart';

import '../constants.dart';
import 'default_text.dart';

class ColumnText extends StatelessWidget {
  ColumnText(
    this.topHeight,
    this.topString,
    this.topTextStyle,
    this.divHeight,
    this.bottomHeight,
    this.bottomString,
    this.bottomTextStyle,
  );
  final double topHeight;
  final String topString;
  final TextStyle topTextStyle;
  final double divHeight;
  final double bottomHeight;
  final String bottomString;
  final TextStyle bottomTextStyle;
  @override
  Widget build(BuildContext context) {
    final double sh = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DefaultText(
          topHeight,
          topString,
          topTextStyle,
        ),
        Divider(
          height: sh * divHeight,
          color: kTransparentColor,
        ),
        DefaultText(
          bottomHeight,
          bottomString,
          bottomTextStyle,
        )
      ],
    );
  }
}
