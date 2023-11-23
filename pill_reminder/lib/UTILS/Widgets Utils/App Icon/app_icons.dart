import 'package:flutter/cupertino.dart';

class AppIcon extends StatelessWidget {
  final Color backgroundcolor;
  final String path;
  final double containerSize;
  final double iconSize;
  const AppIcon(
      {Key? key,
        required this.backgroundcolor,
        required this.path,
        required this.iconSize,
        required this.containerSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundcolor,
          image: DecorationImage(image: AssetImage(path,),fit: BoxFit.contain),),
      //child: Icon(icon, color: iconColor, size: iconSize),
    );
  }
}
