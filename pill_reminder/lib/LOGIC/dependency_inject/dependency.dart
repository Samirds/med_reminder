import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pill_reminder/LOGIC/controllers/Details%20Drop%20Down%20Controller/details_drop_down_controller.dart';
import 'package:pill_reminder/LOGIC/controllers/theme_controller.dart';

import '../controllers/calendar controller/calendar_date_controller.dart';


Future<void> init() async {

 //------------------------------ Here we are initializing the local storage Hive
 var directory = await getApplicationDocumentsDirectory();
 Hive.init(directory.path);
 await Hive.initFlutter();


  // ..........................................................Repos...........................................................

  // .........................................................controller ..............................................
 Get.lazyPut(() => ThemeController());
 Get.lazyPut(()=>DateController());
 Get.lazyPut(()=>DetailsDropDownController());


}
