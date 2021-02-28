import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:huesofthemind_web/constants.dart';

class HomePageM extends StatefulWidget {
  @override
  _HomePageMState createState() => _HomePageMState();
}

class _HomePageMState extends State<HomePageM> {
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _HomePageMState() {
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
  void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text('You wrote $value!'))));
  }

  AppBar buildAppBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new AppBar(
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'logo.png',
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'HOTM',
            style: TextStyle(
              color: kYellowColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
      actions: [
        searchBar.getSearchAction(context),
      ],
      backgroundColor: kPrimaryColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: searchBar.build(context),
      drawer: Drawer(
        child: Container(
          color: kPrimaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "logo.png",
                  height: size.height * 0.2,
                  width: size.width * 0.3,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              buildListTile(
                title: 'Home',
                icon: Icons.home,
                onTap: () {},
              ),
              Divider(
                indent: size.width * 0.3,
                endIndent: size.width * 0.3,
                color: kYellowColor,
                thickness: 2,
              ),
              buildListTile(
                title: 'About Us',
                icon: Icons.home,
                onTap: () {},
              ),
              Divider(
                indent: size.width * 0.3,
                endIndent: size.width * 0.3,
                color: kYellowColor,
                thickness: 2,
              ),
              buildListTile(
                title: 'Events',
                icon: Icons.home,
                onTap: () {},
              ),
              Divider(
                indent: size.width * 0.3,
                endIndent: size.width * 0.3,
                color: kYellowColor,
                thickness: 2,
              ),
              buildListTile(
                title: 'Help Yourself',
                icon: Icons.home,
                onTap: () {},
              ),
              Divider(
                indent: size.width * 0.3,
                endIndent: size.width * 0.3,
                color: kYellowColor,
                thickness: 2,
              ),
              buildListTile(
                title: 'Contact Us',
                icon: Icons.home,
                onTap: () {},
              ),
              Divider(
                indent: size.width * 0.3,
                endIndent: size.width * 0.3,
                color: kYellowColor,
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      '1.png',
                      height: size.height * 0.5,
                      width: size.width * 0.7,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    AutoSizeText(
                      'WE HELP YOU HELP YOURSELF',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    AutoSizeText(
                      "Huesofthemind is a place to empower each other⁣⁣⁣⁣ by sharing, learning, coping & healing together⁣. We embrace and celebrate the hues of you.",
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile({String title, Function onTap, IconData icon}) {
    return ListTile(
      onTap: onTap,
      title: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
