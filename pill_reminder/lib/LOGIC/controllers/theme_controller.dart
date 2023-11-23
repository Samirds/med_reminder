import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';




class ThemeController extends GetxController{

  bool _isDarkModeSelcted = false;
  bool get isDarkModeSelcted  => _isDarkModeSelcted;


   setTheme(bool darkmode)async{
    var themeBox = await Hive.openLazyBox("theme");
    themeBox.put("darkMode", darkmode);
    _isDarkModeSelcted = !_isDarkModeSelcted;
    update();
   }


  Future<bool> getTheme()async{
    var themeBox = await Hive.openLazyBox("theme");
    _isDarkModeSelcted = await themeBox.get("darkMode")?? false;
    update();
    return await themeBox.get("darkMode")?? false;

  }

  bool get isloaded => true;

}