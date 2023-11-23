import 'package:flutter/material.dart';

class Themes{
  static final ThemeData light = ThemeData(
    //scaffoldBackgroundColor: Colors.yellow,
    primarySwatch: Colors.yellow,
    brightness: Brightness.light
  );


  static final ThemeData dark = ThemeData(
      primarySwatch: Colors.green,
      brightness: Brightness.dark
  );
}