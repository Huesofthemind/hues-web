import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

import '../responsive_widget.dart';

class Impact extends StatelessWidget {
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
              'SEE THE IMPACT',
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
            "The passion to make a difference manifests in marvellous ways. Our beneficiaries have called our space Life-changing, and that has made all the difference in our lives.",
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
                        '4000+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Impacted",
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
                        '75+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Collaborations",
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
                        '50+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Events",
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
                        '800+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "HuesLetter Subscribers",
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
