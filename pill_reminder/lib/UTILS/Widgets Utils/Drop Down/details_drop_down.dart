import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pill_reminder/LOGIC/controllers/Details%20Drop%20Down%20Controller/details_drop_down_controller.dart';

import '../../App Properties/appColors.dart';
import '../Dialog/dialog_widget.dart';
import '../Interval Time Amount/interval_time_widget.dart';

class DetailsDropDown extends StatefulWidget {
  const DetailsDropDown({Key? key}) : super(key: key);

  @override
  State<DetailsDropDown> createState() => _DetailsDropDownState();
}

class _DetailsDropDownState extends State<DetailsDropDown> {


  final List<Map> frequencyDetails = [
    {"details": "Once A Day", "value":"once", "isSelect":false},
    {"details": "Twice A Day", "value":"twice", "isSelect":false},
    {"details": "Multiple Times", "value":"multiple", "isSelect":false},
    {"details": "Every - Hours", "value":"interval", "isSelect":false},
    {"details": "Custom", "value":"custom", "isSelect":false},
  ];
  String? defaultValue;
  TextEditingController intervalHrController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsDropDownController>(builder: (detlsDrpdwnController){
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15,right: 5,top: 5),
            child: DropdownButton<String>(
              isExpanded: true,
              isDense: true,
              hint: AppColorsAndText.medHeadline("Select", fontsize: 17),
              dropdownColor: Colors.indigo[200],
              value: defaultValue,
              items: frequencyDetails.map((e) {
                return DropdownMenuItem<String>(

                    value: e["value"],
                    child: AppColorsAndText.medHeadline("${e["details"]}", fontsize: 17));
              }).toList(),
              onChanged: (val) async{

                // CustomDialog().customDialog(context, "Set Time",  SizedBox(
                //   height: 350,width: 300,
                //   child:
                //       TimePickerDialog(
                //         initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                //         // onTimeChange: (TimeOfDay time) {
                //         //   print(
                //         //       "What we get the value of the time is now $time");
                //         // },
                //       ),
                //
                // ),
                // );



                if(val != "interval"){}
                else{
                  await CustomDialog().customDialog(context, "Every After X Hours", IntervalTimeWidget(controllerr: intervalHrController, timeUnit: 'Hours',));
                }

                // CustomDialog().showTimePickerr(context);
                detlsDrpdwnController.setDetailsDrpDwnVal = val;

                setState(() {
                  defaultValue = val;
                  print(val);
                });
              },),
          ),
        ],
      );
    });
  }
}
