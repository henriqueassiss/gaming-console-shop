import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../default_components/column_text.dart';

class PlaystationDetailsScreenConsoleDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ColumnText(
          0.033,
          '4K',
          kPlaystationBoldWhiteTextStyle,
          0.005,
          0.02,
          'Jogos',
          kPlaystationRegularGreyTextStyle,
        ),
        SizedBox(
          width: sw * 0.02,
        ),
        ColumnText(
          0.033,
          '120 FPS',
          kPlaystationBoldWhiteTextStyle,
          0.005,
          0.02,
          'Quadros Por Segundo',
          kPlaystationRegularGreyTextStyle,
        ),
        SizedBox(
          width: sw * 0.02,
        ),
        ColumnText(
          0.033,
          '8K HDR',
          kPlaystationBoldWhiteTextStyle,
          0.005,
          0.02,
          'Alto Alcance Dinâmico',
          kPlaystationRegularGreyTextStyle,
        ),
      ],
    );
  }
}
