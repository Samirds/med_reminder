import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pill_reminder/LOGIC/controllers/theme_controller.dart';
import 'package:pill_reminder/UI/DEMO/PROGRESS%20BAR/circulerProgress.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/Task/tasks.dart';

import 'UI/DEMO/HOME_PAGE/home.dart';
import 'UI/DEMO/HOME_PAGE/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import 'UI/Global Widget/Add Medicine/added_medicine.dart';
import 'UI/Global Widget/Medicine age Details/pill_Details.dart';
import 'UI/PAGES/HOME/home_page.dart';
import 'LOGIC/dependency_inject/dependency.dart' as dep;
import 'UTILS/Widgets Utils/Calendar By Weeks/calendar_by_weeks.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  //-----------------------------------Dependency Injection ---------------------------------
  await dep.init();

  //------------------------------ Here we are initializing the local storage Hive and named it as theme-service
  // var directory = await getApplicationDocumentsDirectory();
  // print("directory is --- $directory");
  // Hive.init(directory.path)
  // await Hive.initFlutter();
  // await Hive.openBox("theme_service");



  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeController){
      return GetMaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Flutter Demo',
        // theme: Themes.light,
        // darkTheme: Themes.dark,
        // themeMode: ThemeMode.dark,
        // //themeMode: themeController.theme,

        home:
          PillDetails()
        //CalendarByWeeks()
        //AddedNewMedicine(),
        //Tasks()
        //home: Circu()
      );
    });
  }
}


