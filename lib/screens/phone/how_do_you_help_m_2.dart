import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

class HowDoYouHelpM2 extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHowWeHelp(
              image: 'volunteer.png',
              title: 'Volunteering',
              content:
                  "You can be an advocate for people with mental illness by fulfilling a volunteer role, or simply when collaborating with our community. If not us, then who?",
            ),
            Container(
              child: Image.asset('beaker.png'),
            )
          ],
        ),
      ),
    ]);
  }
}
