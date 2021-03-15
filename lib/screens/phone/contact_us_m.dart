import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';
import 'package:huesofthemind_web/responsive_widget.dart';

class ContactUsM extends StatefulWidget {
  @override
  _ContactUsMState createState() => _ContactUsMState();
}

class _ContactUsMState extends State<ContactUsM> {
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'CONTACT US',
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
              Column(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Send us a mail!',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: kFontColor,
                          ),
                        ),
                        Text(
                          "While we’re good with spreading smiles, there are simpler ways for you to get one instantly. ",
                          style: TextStyle(
                            fontSize: 18,
                            color: kFontColor,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Subject',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.edit,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextFormField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Message',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Center(
                          child: MaterialButton(
                            padding: EdgeInsets.all(16),
                            minWidth: size.width * 0.4,
                            onPressed: () {},
                            color: kPinkColor,
                            child: Text(
                              'Send',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Follow us on:",
                    style: TextStyle(
                      color: kFontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("insta.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("linkedin.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("twitter.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("face.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("youtube.png"),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
