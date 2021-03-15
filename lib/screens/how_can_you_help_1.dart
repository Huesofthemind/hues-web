import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive_widget.dart';

class HowDoYouHelp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width,
          child: Image.asset(
            "how_bg.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildHowWeHelp(
                          image: 'collaborate.png',
                          title: "Collaborate",
                          content:
                              "If you are committed to eliminating the stigma surrounding mental illnesses and want to encourage mental wellbeing, we would be more than happy to collaborate with your organisation.",
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        buildHowWeHelp(
                          image: 'stories.png',
                          title: "Share your Story",
                          content:
                              "We’d love to share your story, journey, experiences of your own journey of mental wellness.",
                        ),
                      ],
                    ),
                  ),
                  ResponsiveWidget.isLargeScreen(context)
                      ? Expanded(
                          child: Container(
                            child: Image.asset(
                              'beaker.png',
                              height: size.height * 0.6,
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
