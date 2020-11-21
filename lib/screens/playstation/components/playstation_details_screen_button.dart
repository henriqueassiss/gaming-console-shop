import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../default_components/default_text.dart';

class PlaystationDetailsScreenButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: sw * 0.3,
        height: sh * 0.06,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(sw * 0.04),
        ),
        child: DefaultText(
          0.025,
          'Comprar',
          kPlaystationRegularBlueTextStyle,
        ),
      ),
    );
  }
}
