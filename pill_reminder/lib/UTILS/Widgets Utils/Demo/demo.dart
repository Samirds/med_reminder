import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pill_reminder/LOGIC/controllers/Details%20Drop%20Down%20Controller/details_drop_down_controller.dart';

import '../../App Properties/appColors.dart';

class Demo extends StatefulWidget {
  List dtlsdrpdwnList;

   Demo({Key? key,required this.dtlsdrpdwnList}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  @override
  Widget build(BuildContext context) {

    return GetBuilder<DetailsDropDownController>(builder: (dtsdrpdwnController){
       return Wrap(
         children: widget.dtlsdrpdwnList.map((e) {
           if(e['showValue']==true){
             return Card(
               color: Colors.indigo[300],
               elevation: 3,
               child: Padding(
                 padding: EdgeInsets.all(8),
                 child: Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     AppColorsAndText.smallHeadline('9: ${e["index"]}A.M'),
                     SizedBox(
                       width: 5,
                     ),
                     GestureDetector(
                       onTap: () {
                         setState(() {
                           e["showValue"] = false;
                         });
                         print("indx is ${e["index"]}");
                       },
                       child: Icon(
                         widget.dtlsdrpdwnList.length<2?Icons.edit:Icons.delete_forever_rounded,
                         //Icons.edit,
                         color: Colors.white,
                       ),
                     ),

                   ],
                 ),
               ),
             );
           }
           return SizedBox.shrink();   // it is equal to returning a null widget
         }).toList(),
       );
    });
  }
}
