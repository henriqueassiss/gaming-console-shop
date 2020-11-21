import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../xbox/xbox_details_screen.dart';
import '../../../default_components/default_text.dart';
import '../../playstation/playstation_details_screen.dart';

class HomeScreenButton extends StatelessWidget {
  HomeScreenButton(this.xboxLayout);
  final bool xboxLayout;
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;

    push(context, page) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    }

    return GestureDetector(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.fromLTRB(
          sw * 0.07,
          sh * 0.02,
          sw * 0.07,
          sh * 0.02,
        ),
        decoration: BoxDecoration(
          color: xboxLayout == true ? kXboxGreenColor : kPlaystationBlueColor,
          borderRadius: BorderRadius.circular(sw * 0.05),
        ),
        child: DefaultText(
          0.028,
          'Detalhes',
          kXboxRegularTextStyle,
        ),
      ),
      onTap: () {
        if (xboxLayout == true) {
          push(context, XboxDetailsScreen());
        } else {
          push(context, PlaystationDetailsScreen());
        }
      },
    );
  }
}
