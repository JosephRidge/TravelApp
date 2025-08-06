import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
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
        ClipRRect(
          // utility widget
          child: BackdropFilter(
            // glasslike feature
            filter: ui.ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  // rich text
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Unveil The Travel Wonders',
                      style: TextStyle(
                        color: const ui.Color.fromARGB(255, 255, 255, 255),
                        fontSize: 40,
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
