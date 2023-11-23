import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/TRANSPARENT%20BACKGROUND/transparent_container.dart';

import '../../App Properties/appColors.dart';
import '../App Icon/app_icons.dart';

class IconsWithTextRow extends StatelessWidget {
  String text;
  String imgPath;
  Color blurFilterColor;
  bool isPressed;

  IconsWithTextRow(
      {Key? key,
      this.isPressed = false,
      required this.blurFilterColor,
      required this.imgPath,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransparentContainer(
      brdrRadious: 12,
      height: 0,
      width: 0,
      blurFilterColor: blurFilterColor,
      isPressed: isPressed,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            AppIcon(
              backgroundcolor: Colors.transparent,
              path: imgPath,
              iconSize: 0,
              containerSize: 30,
            ),
            SizedBox(
              width: 5,
            ),
            AppColorsAndText.smallHeadline(text),
          ],
        ),
      ),
    );
  }
}
