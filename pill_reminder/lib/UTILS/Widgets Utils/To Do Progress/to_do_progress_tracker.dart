import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/TRANSPARENT%20BACKGROUND/transparent_container.dart';

import '../Circular PrgressBar/circular_progress_bar.dart';

class ToDoProgressTracker extends StatefulWidget {
  double parentHeight;
  double childHeight;
  double childWidth;

  ToDoProgressTracker({Key? key,
   required this.parentHeight,
  required this.childHeight,
  required this.childWidth}) : super(key: key);

  @override
  State<ToDoProgressTracker> createState() => _ToDoProgressTrackerState();
}

class _ToDoProgressTrackerState extends State<ToDoProgressTracker> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.parentHeight,
      child: ListView.builder(
        itemCount: 5,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Container(
              child: TransparentContainer(
                  height: widget.childHeight,
                  width: widget.childWidth,
                  blurFilterColor: Colors.indigoAccent,
                  isPressed: _isPressed,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppColorsAndText.headline("Healthy",
                            textColor: index%3==1?Colors.greenAccent:index%3==2?Colors.pinkAccent:Colors.lightBlueAccent,),
                        AppColorsAndText.smallHeadline("5/8 Completed", textColor: Colors.yellow),
                        SizedBox(height: 10,),

                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            CircularProgress(
                                width: 70,
                                height: 70,
                                progress: 0.75,
                                progressColor: index%3==1?Colors.greenAccent:index%3==2?Colors.pinkAccent:Colors.lightBlueAccent,
                                afterCompIconSize: 54),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: 120, height: 25,
                          color: Colors.white, child: Row(
                          children: [
                            Icon(Icons.add_box_outlined),
                            SizedBox(width: 5,),
                            AppColorsAndText.smallHeadline("Add TODo",textColor: Colors.black87)
                          ],
                        ),),
                      ],
                    ),
                  )
              ),
            );
          }),
    );
  }
}
