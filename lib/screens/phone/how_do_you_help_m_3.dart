import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

class HowDoYouHelpM3 extends StatelessWidget {
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
                    Container(
                      height: size.height * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: buildHowWeHelp(
                              image: 'collaborate.png',
                              title: 'Collaborate',
                              content:
                                  "If you are committed to eliminating the stigma surrounding mental illnesses and want to encourage mental wellbeing, we would be more than happy to collaborate with your organisation.",
                            ),
                          ),
                          Expanded(
                            child: buildHowWeHelp(
                              image: 'stories.png',
                              title: 'Share your Stories',
                              content:
                                  "We’d love to share your story, journey, experiences of your own journey of mental wellness.",
                            ),
                          ),
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
