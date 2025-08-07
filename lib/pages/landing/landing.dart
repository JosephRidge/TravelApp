import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slider_button/slider_button.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      // layout widget
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        // adding the image background
        Positioned.fill(
          child: Image(
            image: AssetImage("assets/images/islands.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        //bottom blurred out section
        ClipRect(
          /// adds a rounded corner, clipRect => rectangle
          // utility widget
          child: BackdropFilter(
            // glasslike feature
            filter: ui.ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 12),
                  // rich text
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Unveil The \nTravel Wonders',
                      style: TextStyle(
                        color: const ui.Color.fromARGB(255, 255, 255, 255),
                        fontSize: 40,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: screenWidth * 2 / 3,
                    child: Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'NORWAY',
                            style: TextStyle(
                              color: const ui.Color.fromARGB(
                                255,
                                255,
                                255,
                                255,
                              ),
                              fontSize: 24,
                              letterSpacing: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text:
                                'Take the first step to an unforgetable journey',
                            style: TextStyle(
                              color: const ui.Color.fromARGB(
                                255,
                                255,
                                255,
                                255,
                              ),
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  Center(
                    child: SliderButton(
                      shimmer: false,
                      height: 60,
                      backgroundColor: const Color(0xff4c593b),
                      buttonColor: const Color(0xff9bfe67),
                      action: () async {
                        ///Do something here OnSlide
                        return true;
                      },
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: 40),
                          Text(
                            "Explore Now",
                            style: TextStyle(
                              color: ui.Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: 12),
                          SvgPicture.asset(
                            width: 32,
                            height: 32,
                            "assets/icons/doubleArrow.svg",
                            color: Colors.white,
                          ),
                        ],
                      ),
                      icon: SvgPicture.asset(
                        width: 32,
                        height: 32,
                        "assets/icons/sendIcon.svg",
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
