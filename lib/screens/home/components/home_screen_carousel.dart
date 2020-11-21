import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../.././../default_components/animated_text.dart';

import '../../../data.dart';
import '../home_screen.dart';
import '../../../constants.dart';
import 'home_screen_button..dart';

class HomeScreenCarousel extends StatefulWidget {
  HomeScreenCarousel(this.notifyParent, this.changeBackgroundColor);
  final Function notifyParent;
  final Function changeBackgroundColor;
  @override
  HomeScreenCarouselState createState() => HomeScreenCarouselState();
}

class HomeScreenCarouselState extends State<HomeScreenCarousel> {
  @override
  Widget build(BuildContext context) {
    final double sw = MediaQuery.of(context).size.width;
    final double sh = MediaQuery.of(context).size.height;
    return CarouselSlider.builder(
      itemCount: Data.consoleImg.length,
      itemBuilder: (context, index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(sw * 0.06),
            color: HomeScreenState.xboxLayout == true
                ? kXboxLightColor
                : kPlaystationLightColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeScreenState.carouselIndex == index
                  ? AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: sh * 0.39,
                      child: Image.asset(
                        Data.consoleImg[index],
                        fit: BoxFit.fitHeight,
                      ),
                    )
                  : AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: sh * 0.36,
                      child: Image.asset(
                        Data.consoleImg[index],
                        fit: BoxFit.fitHeight,
                      ),
                    ),
              Divider(
                color: kTransparentColor,
                height: sh * 0.03,
              ),
              AnimatedText(
                0.025,
                '${Data.consoleName.keys.elementAt(index)}',
                kXboxRegularTextStyle,
                kPlaystationRegularTextStyle,
              ),
              Divider(
                color: kTransparentColor,
                height: sh * 0.01,
              ),
              AnimatedText(
                0.04,
                '${Data.consoleName.values.elementAt(index)}',
                kXboxBoldTextStyle,
                kPlaystationBoldTextStyle,
              ),
              Divider(
                color: kTransparentColor,
                height: sh * 0.025,
              ),
              HomeScreenButton(HomeScreenState.xboxLayout),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: sh * 0.65,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        viewportFraction: sw * 0.0024,
        scrollPhysics: BouncingScrollPhysics(),
        onPageChanged: widget.changeBackgroundColor,
      ),
    );
  }
}
