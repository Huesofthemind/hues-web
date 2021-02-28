import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:huesofthemind_web/constants.dart';
import 'package:huesofthemind_web/responsive_widget.dart';
import 'package:huesofthemind_web/widgets/menu_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new AppBar(
      leading: Padding(
        padding: EdgeInsets.all(
          ResponsiveWidget.isLargeScreen(context) ? 5 : 8.0,
        ),
        child: Image.asset('logo.png'),
      ),
      title: Text(
        'HOTM',
        style: TextStyle(
          color: kYellowColor,
          fontWeight: FontWeight.bold,
          fontSize: ResponsiveWidget.isLargeScreen(context) ? 40 : 30,
        ),
      ),
      actions: [
        Container(
          width: ResponsiveWidget.isLargeScreen(context)
              ? size.width * 0.4
              : size.width * 0.6,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuButton(
                label: 'Home',
              ),
              MenuButton(
                label: 'About Us',
              ),
              MenuButton(
                label: 'Events',
              ),
              MenuButton(
                label: 'Help Yourself',
              ),
              MenuButton(
                label: 'Contact Us',
              ),
              searchBar.getSearchAction(context),
            ],
          ),
        ),
      ],
      backgroundColor: kPrimaryColor,
    );
  }

  void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text('You wrote $value!'))));
  }

  _HomePageState() {
    searchBar = new SearchBar(
        hintText: 'Search',
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted,
        onCleared: () {
          print("cleared");
        },
        onClosed: () {
          print("closed");
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: searchBar.build(context),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(
                        ResponsiveWidget.isMediumScreen(context) ? 32 : 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              'WE HELP YOU\nHELP YOURSELF',
                              maxLines: 2,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize:
                                    ResponsiveWidget.isLargeScreen(context)
                                        ? 64
                                        : 50,
                              ),
                            ),
                            ResponsiveWidget.isMediumScreen(context)
                                ? Container(
                                    child: Image.asset(
                                      '1.png',
                                      height: size.height * 0.3,
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Text(
                          "Huesofthemind is a place to empower each other by sharing, learning, coping & healing together⁣. We embrace and celebrate the hues of you.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: ResponsiveWidget.isLargeScreen(context)
                                ? 32
                                : 18,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: kPinkColor,
                              child: Text(
                                'Organise a Workshop',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: ResponsiveWidget.isMediumScreen(context)
                                      ? 16.0
                                      : 32),
                              child: OutlineButton(
                                borderSide:
                                    BorderSide(width: 1, color: kPinkColor),
                                onPressed: () {},
                                color: Colors.black,
                                child: Text(
                                  'Be a Volunteer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kPinkColor,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveWidget.isLargeScreen(context)
                    ? Expanded(
                        flex: 2,
                        child: Container(
                          child: Image.asset('1.png'),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          Positioned(
            top: ResponsiveWidget.isLargeScreen(context)
                ? size.height * 0.09
                : size.height * 0.19,
            left: size.width * 0.0005,
            child: Container(
              child: Image.asset(
                'butter.png',
                height: ResponsiveWidget.isLargeScreen(context) ? 100 : 80,
                width: ResponsiveWidget.isLargeScreen(context) ? 100 : 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
