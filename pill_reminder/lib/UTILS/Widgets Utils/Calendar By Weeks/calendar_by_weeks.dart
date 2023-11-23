import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/TRANSPARENT%20BACKGROUND/transparent_container.dart';

class CalendarByWeeks extends StatefulWidget {
  CalendarByWeeks({Key? key}) : super(key: key);

  @override
  State<CalendarByWeeks> createState() => _CalendarByWeeksState();
}

class _CalendarByWeeksState extends State<CalendarByWeeks> {

  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: AppColorsAndText.bodyColorGradientLight
          ),
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColorsAndText.headline(DateFormat.yMMMMd().format(DateTime.now())),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red,
                      ),
                      width: 120,height: 50,
                      child: Center(child: AppColorsAndText.medHeadline("+Add Task"),),
                    )
                  ],
                ),
                AppColorsAndText.medHeadline("Today"),
                SizedBox(
                  height: 10,
                ),
                TransparentContainer(
                  padding: 0,
                    height: 0,
                    width: 0,
                    blurFilterColor: Colors.black54,
                    isPressed: false,
                    child: DatePicker(
                      DateTime.now(),
                      height: 100,
                      width: 80,
                      initialSelectedDate: DateTime.now(),
                      selectedTextColor: Colors.white,
                      selectionColor: Colors.indigoAccent,
                      onDateChange: (date){
                        _selectedDate = date;
                        print("selected date is ${_selectedDate}");
                      },
                    ))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
