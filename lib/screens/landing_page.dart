import 'package:flutter/material.dart';
import 'package:huesofthemind_web/responsive_widget.dart';
import 'package:huesofthemind_web/screens/around_world.dart';
import 'package:huesofthemind_web/screens/collab.dart';
import 'package:huesofthemind_web/screens/collborate_with_us.dart';
import 'package:huesofthemind_web/screens/donate.dart';
import 'package:huesofthemind_web/screens/home_page.dart';
import 'package:huesofthemind_web/screens/how_can_you_help.dart';
import 'package:huesofthemind_web/screens/how_can_you_help_1.dart';
import 'package:huesofthemind_web/screens/how_do_we_help_1.dart';
import 'package:huesofthemind_web/screens/how_do_we_help_2.dart';
import 'package:huesofthemind_web/screens/impact.dart';
import 'package:huesofthemind_web/screens/phone/around_world_m.dart';
import 'package:huesofthemind_web/screens/phone/collab_m.dart';
import 'package:huesofthemind_web/screens/phone/homepage_m.dart';
import 'package:huesofthemind_web/screens/phone/how_do_we_help_m1.dart';
import 'package:huesofthemind_web/screens/phone/how_do_we_help_m2.dart';
import 'package:huesofthemind_web/screens/phone/how_do_we_help_m3.dart';
import 'package:huesofthemind_web/screens/phone/how_do_you_help_m_1.dart';
import 'package:huesofthemind_web/screens/phone/how_do_you_help_m_2.dart';
import 'package:huesofthemind_web/screens/phone/how_do_you_help_m_3.dart';
import 'package:huesofthemind_web/screens/phone/impact_m.dart';

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
                HowDoYouHelpM3(),
                HowDoYouHelpM2(),
                HowDoYouHelpM(),
                HomePageM(),
                AroundWorldM(),
                HowDoWeHelpM(),
                HowDoWeHelpM2(),
                HowDoWeHelpM3(),
                ImpactM(),
                CollabM(),
                Donate(),
                CollabWithUs(),
              ]
            : [
                HomePage(),
                AroundTheWorld(),
                HowDoWeHelp(),
                HowDoWeHelp2(),
                Impact(),
                Collab(),
                HowDoYouHelp(),
                HowDoYouHelp2(),
                Donate(),
                CollabWithUs(),
              ],
      ),
    );
  }
}
