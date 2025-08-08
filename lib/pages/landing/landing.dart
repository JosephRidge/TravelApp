import 'dart:ui' as ui;

import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';

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
                    child: ActionSlider.standard(
                      child: const Text('Slide to confirm'),
                      action: (controller) async {
                        controller.loading(); //starts loading animation
                        await Future.delayed(const Duration(seconds: 3));
                        controller.success(); //starts success animation
                      },
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
