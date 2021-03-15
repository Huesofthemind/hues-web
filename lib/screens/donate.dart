import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

import '../responsive_widget.dart';

class Donate extends StatelessWidget {
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
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isLargeScreen(context)
                ? size.width * 0.2
                : size.width * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Donate',
                  style: TextStyle(
                    color: kFontColor,
                    fontSize: ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "Since we’re a Non-Profit Organization, we require your financial support to make a difference. We will use these resources to make mental health resources more available, affordable and accessible  and also develop technologically.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kFontColor,
                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 25 : 18,
                ),
              ),
              SizedBox(
                height: ResponsiveWidget.isLargeScreen(context)
                    ? size.height * 0.06
                    : size.height * 0.05,
              ),
              Center(
                child: OutlineButton(
                  borderSide: BorderSide(width: 1, color: kPinkColor),
                  onPressed: () {},
                  color: Colors.black,
                  child: Text(
                    'Donate Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPinkColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
