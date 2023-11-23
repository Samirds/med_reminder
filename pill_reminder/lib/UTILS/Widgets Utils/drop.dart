import 'package:flutter/material.dart';

import '../App Properties/appColors.dart';

class DropDownHelper extends StatefulWidget {
  const DropDownHelper({Key? key}) : super(key: key);

  @override
  State<DropDownHelper> createState() => _DropDownHelperState();
}

class _DropDownHelperState extends State<DropDownHelper> {
  List dropDownListData = [
    {"frequency": "Every Day", "value": "everyDay"},
    {"frequency": "After Every X Days", "value": "afterEveryXDay"},
    {"frequency": "Specific Days of Week", "value": "specificDayWeek"},
    {"frequency": "Custom", "value": "custom"},
  ];

  String defaultValue = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Padding(
        padding:  EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  AppColorsAndText.medHeadline("Frequency"),
                  SizedBox(height: 5,),
                  //------------------------------------- Drop Down -------------------------------------------------
                  DropdownButton<String>(

                      iconEnabledColor: Colors.indigo,
                      dropdownColor: Colors.indigo[200],

                      isDense: false,
                      value: defaultValue,
                      isExpanded: true,
                      //menuMaxHeight: 350,
                      items: [
                        DropdownMenuItem(
                            child: AppColorsAndText.medHeadline("Select Frequency"),
                            value: '0'),
                        ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(

                              child: AppColorsAndText.smallHeadline("${data['frequency']}"), value: data['value']);
                        }).toList(),
                      ],
                      onChanged: (value) {
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                          print("d$defaultValue");
                        });
                      }),
                  SizedBox(height: 5,),
                  //-------------------------------------
                ],
              )


      ),
    );
  }
}
