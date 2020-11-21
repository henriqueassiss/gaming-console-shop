import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../default_components/default_text.dart';
import 'components/playstation_details_screen_console.dart';
import 'components/playstation_details_screen_blue_tab.dart';

class PlaystationDetailsScreen extends StatefulWidget {
  @override
  _PlaystationDetailsScreenState createState() =>
      _PlaystationDetailsScreenState();
}

class _PlaystationDetailsScreenState extends State<PlaystationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: kWhiteColor,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              DefaultText(
                0.035,
                'Detalhes',
                kPlaystationMediumTextStyle,
              ),
              Divider(
                height: sh * 0.018,
                color: kTransparentColor,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  PlaystationDetailsScreenConsole(),
                  PlaystationDetailsScreenBlueTab(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
