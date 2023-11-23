import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class AppColorsAndText{

  static var bodyColorGradientDark = LinearGradient(
      colors: [Colors.blueGrey[700]!, Colors.indigo[700]!],
      begin: Alignment.bottomRight,
      end: Alignment.topLeft);

  static var bodyColorGradientLight = LinearGradient(
      colors: [Colors.indigo[100]!, Colors.indigoAccent],
      begin: Alignment.bottomRight,
      end: Alignment.topLeft);

  static const Color bodyColor = Color.fromARGB(255, 220, 236, 208);
  static const Color containerColor = Color.fromARGB(255, 250, 248, 225);


  static  Color? headingTextColorLight = Colors.orange[50];
  static const Color normalTextColorLight = Colors.white70;

  static  Color? headingTextColorDark = Colors.orange[50];
  static const Color normalTextColorDark = Colors.white70;

  static Text headline(String text,{double fontsize = 23, FontWeight fontWeight = FontWeight.bold, Color textColor = Colors.white} ) => Text(text,style: TextStyle(fontSize: fontsize, fontWeight: fontWeight,color: textColor),overflow: TextOverflow.ellipsis,);
  static Text medHeadline(String text,{double fontsize = 20, FontWeight fontWeight = FontWeight.bold, Color textColor = Colors.white} ) => Text(text,style: TextStyle(fontSize: fontsize, fontWeight: fontWeight,color: textColor),overflow: TextOverflow.ellipsis);
  static Text smallHeadline(String text,{double fontsize = 15, FontWeight fontWeight = FontWeight.w500, Color textColor = Colors.white} ) => Text(text,style: TextStyle(fontSize: fontsize, fontWeight: fontWeight,color: textColor),overflow: TextOverflow.ellipsis);

}