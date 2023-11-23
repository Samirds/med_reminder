import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../App Properties/appColors.dart';

class SelectedTimeCard extends StatefulWidget {
  int ttlCardNo;

  SelectedTimeCard({Key? key,  required this.ttlCardNo}) : super(key: key);

  @override
  State<SelectedTimeCard> createState() => _SelectedTimeCardState();
}

class _SelectedTimeCardState extends State<SelectedTimeCard> {

  late List<Map<String, dynamic> >valueList;
  late Map<String, dynamic> valueMap ;


  @override
  Widget build(BuildContext context) {


    valueList = [];
    valueMap = Map();

    for(int i=0; i<widget.ttlCardNo; i++){
      valueMap["indexValue"] = i;
      valueMap["isClicked"] = false;
    }
    valueList.add(valueMap);
    print("map is ${valueList}");




    return Wrap(
      children: valueList.map((e) {
        if(e['isClicked']==false){
          return Card(
            elevation: 3,
            color: Colors.indigo[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppColorsAndText.smallHeadline('9:${e["indexValue"]} A.M'),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {

                      setState(() {

                          e["isClicked"] = true;
                      });
                    },
                    child:  Icon(
                      widget.ttlCardNo==1?Icons.edit:Icons.delete_forever_rounded,
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
    );



    }
}



