import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

import '../responsive_widget.dart';

class CollabWithUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          color: kYellowBg,
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
                  'START COLLABORATING WITH US',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kFontColor,
                    fontSize: ResponsiveWidget.isLargeScreen(context)
                        ? 45
                        : (ResponsiveWidget.isMediumScreen(context))
                            ? 38
                            : 24,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "If your organisation is committed to eliminating the stigma surrounding mental illness through awareness and education, we would be more than happy to collaborate with your organisation.",
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
                child: MaterialButton(
                  onPressed: () {},
                  color: kPinkColor,
                  child: Text(
                    'Collaborate',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          child: Image.asset(
            "how_bg.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
