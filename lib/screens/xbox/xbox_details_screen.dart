import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../default_components/default_text.dart';
import 'components/xbox_details_screen_console.dart';
import 'components/xbox_details_screen_green_tab.dart';

class XboxDetailsScreen extends StatefulWidget {
  @override
  _XboxDetailsScreenState createState() => _XboxDetailsScreenState();
}

class _XboxDetailsScreenState extends State<XboxDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: kXboxBackgroundColor,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              DefaultText(
                0.035,
                'Detalhes',
                kXboxMediumTextStyle,
              ),
              Divider(
                height: sh * 0.018,
                color: kTransparentColor,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  XboxDetailsScreenConsole(),
                  XboxDetailsScreenGreenTab(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
