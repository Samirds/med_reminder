import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/Dialog/dialog_widget.dart';

import '../Check Box/check_box_widget.dart';
import '../Interval Time Amount/interval_time_widget.dart';

class FrequncyDropDownWidget extends StatefulWidget {
  FrequncyDropDownWidget({Key? key}) : super(key: key);

  @override
  State<FrequncyDropDownWidget> createState() => _FrequncyDropDownWidget();
}


//----------------- code from nitish kumar sing
class _FrequncyDropDownWidget extends State<FrequncyDropDownWidget> {
  final List<Map> frequency = [
    {"frequency": "Every Day", "value":"everyDay"},
    {"frequency": "Every After - Day", "value":"interval"},
    {"frequency": "Specific Days of Week", "value":"specWeek"},
    {"frequency": "On Demand", "value":"onDemand"},
    {"frequency": "Custom", "value":"custom"},
  ];

  TextEditingController intervalDaysController = TextEditingController();
  String? defaultFrequency;



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        //-------------------------------------------- DropDown for Frequency-------------------------
        Padding(
          padding: EdgeInsets.only(left: 15,right: 5,top: 5),
          child: DropdownButton<String>(
            isExpanded: true,
            isDense: true,
            hint: AppColorsAndText.medHeadline("Select", fontsize: 17),
            dropdownColor: Colors.indigo[200],
            value: defaultFrequency,
            items: frequency.map((e) {
              return DropdownMenuItem<String>(

                  value: e["value"],
                  child: AppColorsAndText.medHeadline("${e["frequency"]}", fontsize: 17));
            }).toList(),



            onChanged: (val) async {
              if(val =="interval"){
                await CustomDialog().customDialog(context, "Every After X Days", IntervalTimeWidget(controllerr: intervalDaysController, timeUnit: 'Days',));
              }
              else if(val =="specWeek"){
                await CustomDialog().customDialog(context, "Select Days", ChckBoxWidget());
              }
              setState(() {
                defaultFrequency = val!;
              });

            },),
        ),

      ],
    );
  }
}
