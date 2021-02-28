import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

import '../responsive_widget.dart';

class AroundTheWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      color: kPrimaryColor,
      padding: EdgeInsets.symmetric(horizontal: 64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'AROUND THE WORLD',
              style: TextStyle(
                color: Colors.white,
                fontSize: ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            "These statistics are not mere numbers, they highlight the mental state of people and how important it is to hold a healthy discussion about mental health to break the stigma.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: ResponsiveWidget.isLargeScreen(context) ? 25 : 18,
            ),
          ),
          SizedBox(
            height: ResponsiveWidget.isLargeScreen(context)
                ? size.height * 0.06
                : size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        '19%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "of adults suffers from mental illness every year",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 25 : 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        '46%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "of teenagers suffers from mental illness every year",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 25 : 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        '13%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "of children suffers from mental illness every year",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 25 : 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
