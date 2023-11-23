import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/TRANSPARENT%20BACKGROUND/transparent_container.dart';

import '../../../UTILS/Widgets Utils/App Icon/app_icons.dart';
import '../../../UTILS/Widgets Utils/Bottom Sheet Widget/bottom_sheet_widget.dart';

class PillDetails extends StatelessWidget {
  const PillDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pill Reminer",)
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: AppColorsAndText.bodyColorGradientLight
          ),
          child: Center(
            child: GestureDetector(
              onTap: (){
                print("Hello");
                Get.bottomSheet(
                  backgroundColor: Colors.grey,
                  barrierColor: Colors.transparent,
                  isDismissible: true,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
                  ),
                    btmshtWidget()
                );
                  },
                child: Text("Cliced")),)
        ),
      ),
    );
  }
}

