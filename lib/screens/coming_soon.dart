import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('coming_soon.png'),
        )),
      ),
    );
  }
}
