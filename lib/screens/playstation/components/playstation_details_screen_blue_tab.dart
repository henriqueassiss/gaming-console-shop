import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../default_components/default_dot.dart';
import 'playstation_details_screen_button.dart';
import '../../../default_components/column_text.dart';
import '../../../default_components/default_text.dart';

class PlaystationDetailsScreenBlueTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: sh * 0.15,
      padding: EdgeInsets.only(
        left: sw * 0.05,
        right: sw * 0.05,
      ),
      decoration: BoxDecoration(
        color: kPlaystationBlueColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(sw * 0.1),
          topRight: Radius.circular(sw * 0.1),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DefaultText(
            0.02,
            '25% de desconto',
            kXboxRegularGreyTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnText(
                0.02,
                'Agora',
                kXboxRegularGreyTextStyle,
                0.005,
                0.03,
                'R\$3.999',
                kXboxBoldTextStyle,
              ),
              DefaultDot(),
              ColumnText(
                0.02,
                'Antes',
                kXboxRegularGreyTextStyle,
                0.005,
                0.03,
                'R\$4.599',
                kXboxBoldOldPriceTextStyle,
              ),
              SizedBox(
                width: sw * 0.03,
              ),
              PlaystationDetailsScreenButton(),
            ],
          )
        ],
      ),
    );
  }
}
