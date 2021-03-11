import 'dart:html';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive_widget.dart';

class HowDoWeHelp extends StatelessWidget {
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
              Center(
                child: Text(
                  'HOW DO WE HELP ?',
                  style: TextStyle(
                    color: kFontColor,
                    fontSize: ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                children: [
                  ResponsiveWidget.isLargeScreen(context)
                      ? Expanded(
                          child: Container(
                            child: Image.asset(
                              'balloon.png',
                              height: size.height * 0.6,
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildHowWeHelp(
                        image: 'workshop.png',
                        title: "Workshops & Camps",
                        content:
                            "Through the use of structured experiences, group discussions and interactions, we hold dynamic, engaging and interactive sessions designed to provide participants with the opportunity to increase their awareness of mental health.",
                      ),
                      buildHowWeHelp(
                          image: 'campaign.png',
                          title: "Campaigns",
                          content:
                              "We aim to foster a world where mental health is for everyone. In this venture, we collaborate with other organisations which resonate with the same goal as ours, to conduct Live sessions and social media campaigns to spread awareness."),
                      buildHowWeHelp(
                          image: 'sharing.png',
                          title: "Sharing Spaces",
                          content:
                              "We provide people a place to share their experiences by fostering a safe space. This is cathartic for the one sharing it and empowering for the community."),
                    ],
                  )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding buildHowWeHelp({String image, String title, String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 8,
      ),
      child: Column(
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
