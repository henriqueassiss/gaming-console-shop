import 'package:flutter/material.dart';

import '../home_screen.dart';
import '../../../constants.dart';
import '../../../default_components/animated_text.dart';

class HomeScreenTitle extends StatelessWidget {
  HomeScreenTitle(this.notifyParent);
  final Function notifyParent;
  @override
  Widget build(BuildContext context) {
    final double sh = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedText(
          0.037,
          'Olá Henrique! 👋',
          kXboxRegularTextStyle,
          kPlaystationRegularTextStyle,
        ),
        Divider(
          height: sh * 0.005,
          color: kTransparentColor,
        ),
        AnimatedText(
          0.045,
          'Escolha o seu console.',
          kXboxBoldTextStyle,
          kPlaystationBoldTextStyle,
        ),
      ],
    );
  }
}
