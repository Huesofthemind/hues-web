import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';
import 'package:huesofthemind_web/responsive_widget.dart';

class HowDoWeHelpM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        width: size.width,
        child: Image.asset(
          "how_m_bg.png",
          fit: BoxFit.cover,
        ),
      ),
      Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        'HOW DO WE HELP ?',
                        style: TextStyle(
                          color: kFontColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      height: size.height * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              child: Image.asset('balloon.png'),
                            ),
                          ),
                          ResponsiveWidget.isTooSmallScreen(context)
                              ? SizedBox.shrink()
                              : SizedBox(
                                  height: size.height * 0.1,
                                ),
                          Expanded(
                            child: buildHowWeHelp(
                              image: 'workshop.png',
                              title: 'Workshops & Camps',
                              content:
                                  "Through the use of structured experiences, group discussions and interactions, we hold dynamic, engaging and interactive sessions designed to provide participants with the opportunity to increase their awareness of mental health.",
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
