import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../App Properties/appColors.dart';
import '../Check Box/check_box_widget.dart';

class CustomDialog {


  Future customDialog(BuildContext Context, String title, childWidget) async {
    return showDialog(
        context: Context,
        builder: (Context) {
          return AlertDialog(
            backgroundColor: Colors.indigo[200],
            title: AppColorsAndText.medHeadline(title),
            content: Container(
              child: childWidget,
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(Context);
                  },
                  child: AppColorsAndText.smallHeadline("Ok"))
            ],
          );
        });
  }

  showTimePickerr(BuildContext Context){
   // TimeOfDay _timeOfDay = TimeOfDay(hour: hour, minute: minute);
    showTimePicker(
        context: Context,
        initialTime: TimeOfDay.now(),
    );
    //     .then((value){
    //   setState((){
    //     _timeOfDay = value;
    //     /// print(_timeOfDay.format(context))
    //   });
    // });
  }
}
