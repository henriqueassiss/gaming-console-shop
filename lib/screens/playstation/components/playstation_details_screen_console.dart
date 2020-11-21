import 'package:flutter/material.dart';

import '../../../data.dart';
import '../../../constants.dart';
import 'playstation_details_screen_console_details.dart';
import '../../../default_components/default_text.dart';

class PlaystationDetailsScreenConsole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: sh * 0.9,
      padding: EdgeInsets.fromLTRB(
        sw * 0.05,
        sh * 0.03,
        sw * 0.05,
        sh * 0.17,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(sw * 0.1),
          topRight: Radius.circular(sw * 0.1),
        ),
        color: kPlaystationDarkColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: SizedBox(
              height: sh * 0.35,
              child: Image.asset(
                Data.consoleImg[1],
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          DefaultText(
            0.025,
            '${Data.consoleName.keys.elementAt(1)}',
            kPlaystationRegularWhiteTextStyle,
          ),
          DefaultText(
            0.04,
            '${Data.consoleName.values.elementAt(1)}',
            kPlaystationBoldWhiteTextStyle,
          ),
          Divider(
            color: kGreyColor,
            height: sh * 0.02,
          ),
          PlaystationDetailsScreenConsoleDetails(),
          Text(
            '${Data.consoleOverview[1]}',
            style: kPlaystationRegularSpacingTextStyle,
          ),
        ],
      ),
    );
  }
}
