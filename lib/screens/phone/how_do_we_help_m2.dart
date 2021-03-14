import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

class HowDoWeHelpM2 extends StatelessWidget {
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
                image: 'campaign.png',
                title: 'Campaigns',
                content:
                    "We aim to foster a world where mental health is for everyone. In this venture, we collaborate with other organisations which resonate with the same goal as ours, to conduct Live sessions and social media campaigns to spread awareness."),
            buildHowWeHelp(
              image: 'sharing.png',
              title: 'Sharing Spaces',
              content:
                  "We provide people a place to share their experiences by fostering a safe space. This is cathartic for the one sharing it and empowering for the community.",
            ),
            Container(
              height: size.height * 0.2,
              child: Image.asset('people.png'),
            )
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
