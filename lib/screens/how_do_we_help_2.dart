import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive_widget.dart';

class HowDoWeHelp2 extends StatelessWidget {
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
                            image: 'help.png',
                            title: "Professional Help",
                            content:
                                "We raise funds through our events and collaborate with Mental Health Professionals to make therapy  more accessible and affordable for all."),
                        buildHowWeHelp(
                          image: 'huesletter.png',
                          title: "HuesLetter",
                          content:
                              "With the Huesletter, we wish to stir more conversations about Mental Health, provide a place to share & express what we feel, cultivate self-love, compassion & empathy and most importantly, remind you to take a break.",
                        ),
                      ],
                    ),
                  ),
                  ResponsiveWidget.isLargeScreen(context)
                      ? Expanded(
                          child: Container(
                            child: Image.asset(
                              'people.png',
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

  Padding buildHowWeHelp({
    String image,
    String title,
    String content,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Image.asset(image),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: TextStyle(
                  color: kFontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            content,
            style: TextStyle(
              color: kFontColor,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Know more ->",
                style: TextStyle(
                  color: kPinkColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
