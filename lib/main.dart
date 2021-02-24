import 'package:flutter/material.dart';
import 'package:huesofthemind_web/screens/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Huesofthemind',
      theme: ThemeData(fontFamily: 'Nunito'),
      home: LandingPage(),
    );
  }
}
