import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

class HowDoWeHelpM3 extends StatelessWidget {
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
                              image: 'help.png',
                              title: 'Professional Help',
                              content:
                                  "We raise funds through our events and collaborate with Mental Health Professionals to make therapy  more accessible and affordable for all.",
                            ),
                          ),
                          Expanded(
                            child: buildHowWeHelp(
                              image: 'huesletter.png',
                              title: 'HuesLetter',
                              content:
                                  "With the Huesletter, we wish to stir more conversations about Mental Health, provide a place to share & express what we feel, cultivate self-love, compassion & empathy and most importantly, remind you to take a break.",
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

  Padding buildHowWeHelp({
    String image,
    String title,
    String content,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
