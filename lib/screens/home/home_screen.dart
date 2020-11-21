import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../constants.dart';
import 'components/home_screen_dots.dart';
import 'components/home_screen_title.dart';
import 'components/home_screen_header.dart';
import 'components/home_screen_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  static bool xboxLayout = true;
  static int carouselIndex = 0;

  void refresh() {
    setState(() {});
  }

  void changeBackgroundColor(int index, CarouselPageChangedReason b) {
    if (index == 0) {
      setState(() => HomeScreenState.xboxLayout = true);
    } else {
      setState(() => HomeScreenState.xboxLayout = false);
    }
    carouselIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: AnimatedContainer(
        width: double.infinity,
        height: double.infinity,
        duration: Duration(milliseconds: 200),
        color: xboxLayout == true ? kXboxBackgroundColor : kWhiteColor,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              sw * 0.05,
              sh * 0.02,
              sw * 0.05,
              sh * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                HomeScreenHeader(refresh),
                HomeScreenTitle(refresh),
                HomeScreenCarousel(refresh, changeBackgroundColor),
                HomeScreenDots(refresh),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
