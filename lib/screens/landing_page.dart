import 'package:flutter/material.dart';
import 'package:huesofthemind_web/responsive_widget.dart';
import 'package:huesofthemind_web/screens/around_world.dart';
import 'package:huesofthemind_web/screens/home_page.dart';
import 'package:huesofthemind_web/screens/homepage_m.dart';
import 'package:huesofthemind_web/screens/how_do_we_help.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        pageSnapping: false,
        scrollDirection: Axis.vertical,
        children: ResponsiveWidget.isSmallScreen(context)
            ? [
                HomePageM(),
              ]
            : [
                HomePage(),
                AroundTheWorld(),
                HowDoWeHelp(),
              ],
      ),
    );
  }
}
