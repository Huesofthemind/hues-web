import 'dart:html';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive_widget.dart';

class HowDoYouHelp extends StatelessWidget {
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
                  'HOW CAN YOU HELP ?',
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
                              'rainbow.png',
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
                        title: "Organise a Workshop",
                        content:
                            "There is still a huge stigma around mental illness and we need to banish it. We can only do this through the use of structured experiences, group discussions and interactions",
                      ),
                      buildHowWeHelp(
                        image: 'volunteer.png',
                        title: "Volunteer",
                        content:
                            "You can be an advocate for people with mental illness by fulfilling a volunteer role, or simply when collaborating with our community. If not us, then who?",
                      ),
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
