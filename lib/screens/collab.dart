import 'package:flutter/material.dart';
import 'package:huesofthemind_web/constants.dart';

import '../responsive_widget.dart';

class Collab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        width: size.width,
        child: Image.asset(
          "how_bg.png",
          fit: BoxFit.cover,
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'OUR COLLABORATORS',
                style: TextStyle(
                  color: kFontColor,
                  fontSize: ResponsiveWidget.isLargeScreen(context) ? 45 : 38,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Image.asset(
                      'lonepack.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Image.asset(
                      'maher_ashram.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Image.asset(
                      'dps.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Image.asset(
                      'vit.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ]);
  }
}
