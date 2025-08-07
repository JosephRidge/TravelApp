import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slider_button/slider_button.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return
    // layout widget that add widgets one ontop of the other
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Positioned.fill(
          child: Image(
            image: AssetImage("assets/images/boats.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        ClipRect(
          child: SizedBox(
            height: 300,
            width: double.infinity,
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 24.0, sigmaY: 24.0),
              child: Column(
                children: [
                  SizedBox(height: 24),
                  Text(
                    "Unveil The \nTravel Wonders",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: screenWidth * 1 / 2,
                    child: Column(
                      children: [
                        Text(
                          "NORWAY",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            letterSpacing: 12,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Take the first step into an unforgettable journey",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Center(
                    child: SliderButton(
                      backgroundColor: const Color(0xff4c593b),
                      buttonColor: const Color(0xff9bfe67),
                      height: 60,
                      action: () async {
                        ///Do something here OnSlide
                        return true;
                      },
                      label: Padding(
                        padding: EdgeInsets.only(left: 80, right: 20),
                        child: Row(
                          children: [
                            Text(
                              "Explore Now",
                              style: TextStyle(
                                color: ui.Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(width: 20),
                            SvgPicture.asset(
                              "assets/icons/doubleArrow.svg",
                              semanticsLabel: 'Dart Logo',
                              height: 30,
                              width: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      icon: SvgPicture.asset(
                        "assets/icons/sendIcon.svg",
                        semanticsLabel: 'Dart Logo',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
