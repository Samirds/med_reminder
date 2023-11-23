import 'package:flutter/material.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/Task/tasks.dart';

import '../../../UTILS/App Properties/appColors.dart';
import '../../../UTILS/Widgets Utils/To Do Progress/to_do_progress_tracker.dart';
import '../../Global Widget/User Info/user_info.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              //image: DecorationImage(image: AssetImage("assests/images/design_rainbow.png"),fit: BoxFit.fill),
                gradient: AppColorsAndText.bodyColorGradientLight
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //----------------------------------  Setting Section------------------
                Container(
                  height: 50,
                  color: Colors.red,
                ),

                //----------------------------------  User Profile Section------------------
                UserInfo(),

                //----------------------------------  ToDo Tracker Section------------------
                Padding(padding: EdgeInsets.all(5),
                child: AppColorsAndText.headline("To Do Tracker ...."),),

                //----------------------------------  User Profile Section------------------
                ToDoProgressTracker(parentHeight: 210, childHeight: 0, childWidth: 100,),

                Tasks()


              ],
            ),
          ),
        ),
      ),
    );
  }
}
