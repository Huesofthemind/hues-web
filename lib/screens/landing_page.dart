import 'package:flutter/material.dart';
import 'package:huesofthemind_web/responsive_widget.dart';
import 'package:huesofthemind_web/screens/coming_soon.dart';
import 'package:huesofthemind_web/screens/home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          !ResponsiveWidget.isSmallScreen(context) ? HomePage() : ComingSoon(),
        ],
      ),
    );
  }
}
