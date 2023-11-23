import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';

class ChckBoxWidget extends StatefulWidget {
  const ChckBoxWidget({Key? key}) : super(key: key);

  @override
  State<ChckBoxWidget> createState() => _ChckBoxWidgetState();
}

class _ChckBoxWidgetState extends State<ChckBoxWidget> {


  List<Map> weekDays = [
    {"days": "Sunday", "isChacked": false},
    {"days": "Monday", "isChacked": false},
    {"days": "Tuesday", "isChacked": false},
    {"days": "Wednesday", "isChacked": false},
    {"days": "Thursday", "isChacked": false},
    {"days": "Friday", "isChacked": false},
    {"days": "Saturday", "isChacked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
            children: [
              Column(
                children: weekDays.map((e) {
                  return CheckboxListTile(
                    activeColor: Colors.indigo[300],
                    title: AppColorsAndText.medHeadline(e["days"]),
                      value: e['isChacked'],
                      onChanged: (val){
                      setState(() {
                        e['isChacked'] = val;
                      });

                      });
                }).toList(),
              ),
              SizedBox(height: 30,),
              Divider(
                  height: 1,thickness: 2,color: Colors.indigo[100]
              ),
              SizedBox(height: 5,),

              Wrap(
                children: weekDays.map((e) {
                  if (e["isChacked"] == true) {
                    return Card(
                      elevation: 3,
                      color: Colors.indigo[300],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppColorsAndText.smallHeadline(e['days']),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  e["isChacked"] = !e["isChacked"];
                                });
                              },
                              child: const Icon(
                                Icons.delete_forever_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return Container();
                }).toList(),
              ),
            ],
          ),
    );



  }
}
