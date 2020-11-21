import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Divider(
          height: sw * 0.05,
          color: kTransparentColor,
        ),
        Container(
          width: sw * 0.02,
          height: sw * 0.02,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kWhiteColor,
          ),
        ),
      ],
    );
  }
}
