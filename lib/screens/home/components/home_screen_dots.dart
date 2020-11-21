import 'package:flutter/material.dart';

import '../../../data.dart';
import '../home_screen.dart';
import '../../../constants.dart';

class HomeScreenDots extends StatefulWidget {
  HomeScreenDots(this.notifyParent);
  final Function notifyParent;
  @override
  _HomeScreenDotsState createState() => _HomeScreenDotsState();
}

class _HomeScreenDotsState extends State<HomeScreenDots> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: map<Widget>(
        Data.consoleImg,
        (index, url) {
          return AnimatedContainer(
            width:
                HomeScreenState.carouselIndex == index ? sh * 0.015 : sh * 0.01,
            height:
                HomeScreenState.carouselIndex == index ? sh * 0.015 : sh * 0.01,
            duration: Duration(milliseconds: 200),
            margin: EdgeInsets.symmetric(horizontal: sw * 0.008),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HomeScreenState.xboxLayout == true
                  ? HomeScreenState.carouselIndex == index
                      ? kWhiteColor
                      : kGreyColor
                  : HomeScreenState.carouselIndex == index
                      ? kPlaystationBlackColor
                      : kBlackColor,
            ),
          );
        },
      ),
    );
  }
}
