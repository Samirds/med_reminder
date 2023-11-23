import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/Text%20Input/text_input.dart';

class IntervalTimeWidget extends StatefulWidget {
  TextEditingController controllerr;
  String timeUnit;
  IntervalTimeWidget({Key? key, required this.controllerr, required this.timeUnit}) : super(key: key);

  @override
  State<IntervalTimeWidget> createState() => _IntervalTimeWidgetState();
}

class _IntervalTimeWidgetState extends State<IntervalTimeWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      //width: 250,
      //height: 250,
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 40,
                  width: 50,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  //alignment: Alignment.center,
                  //color: Colors.indigo[300],
                  child:TextInputt(
                    controllerName: widget.controllerr,
                    hint: "X"
                    ,isnumberr: TextInputType.number,
                    hintStyle: TextStyle(fontSize: 18, color:Colors.white),
                    textStyle: TextStyle(fontSize: 18, color:Colors.white),
                  )
              ),
              AppColorsAndText.headline(" ${widget.timeUnit}"),
            ],
          )

      ),

    );

  }
}
