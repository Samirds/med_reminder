import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pill_reminder/LOGIC/controllers/calendar%20controller/calendar_date_controller.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';

Widget datePickerWidget(DateTime currDateTime){
  return Container(
    height: 200,
    margin: EdgeInsets.all(8),
    child: Column(
      children: [
      SizedBox(
      height: 150,
      child: CupertinoDatePicker(
         onDateTimeChanged: (dateTime){
           Get.find<DateController>().selectedDate = dateTime;
           print("object......${Get.find<DateController>().getSelectedDate}");
        },
        initialDateTime: currDateTime,
        mode: CupertinoDatePickerMode.date,
      ),
    ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: (){
            Get.back();


          },
          child: Container(
            child: Center(child: AppColorsAndText.medHeadline("Select Date"),),
          ),
        )

      ],
    ),
  );
}
