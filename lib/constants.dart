import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xff002242);
Color kPinkColor = Color(0xffFF6680);
Color kYellowColor = Color(0xffFFD600);
Color kFontColor = Color(0xff3B3B53);

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
