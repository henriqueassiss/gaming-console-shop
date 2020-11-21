import 'package:flutter/material.dart';

import '../home_screen.dart';
import '../../../constants.dart';

class HomeScreenHeader extends StatelessWidget {
  HomeScreenHeader(this.notifyParent);
  final Function notifyParent;
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            child: Icon(
              Icons.menu,
              size: sw * 0.07,
              color: HomeScreenState.xboxLayout == true
                  ? kWhiteColor
                  : kPlaystationBlackColor,
            ),
          ),
        ),
        GestureDetector(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            child: Icon(
              Icons.person,
              size: sw * 0.07,
              color: HomeScreenState.xboxLayout == true
                  ? kWhiteColor
                  : kPlaystationBlackColor,
            ),
          ),
        ),
      ],
    );
  }
}
