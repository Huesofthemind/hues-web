import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../responsive_widget.dart';

class MenuButton extends StatelessWidget {
  final String label;

  const MenuButton({
    Key key,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton(
        onPressed: () {},
        child: AutoSizeText(
          label,
          maxLines: 1,
          style: TextStyle(
            fontSize: ResponsiveWidget.isMediumScreen(context) ? 14 : 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
