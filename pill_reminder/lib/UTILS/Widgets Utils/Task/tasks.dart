import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pill_reminder/UTILS/Widgets%20Utils/TRANSPARENT%20BACKGROUND/transparent_container.dart';

import '../../App Properties/appColors.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTapDown: (_){

                  setState(() {
                    _isPressed = true;
                  });
                },
                onTapUp: (_){
                  setState(() {
                    _isPressed = false;
                  });
                },
                child: TransparentContainer(
                  height: 0,
                  width: 0,
                  blurFilterColor: Colors.indigoAccent,
                  isPressed: _isPressed,
                  child:  Padding(
                            padding: EdgeInsets.all(0),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                              Container(
                              height: 100,
                              //color: Colors.indigoAccent,
                              ),

                                   Container(
                                     padding: EdgeInsets.only(left: 10),
                                    width: 320,
                                    height: 70,
                                     child:  Column(
                                               children: [
                                                 Row(
                                                   children: [
                                                     Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: [
                                                         AppColorsAndText.headline("Meditaion",textColor: Colors.black87),
                                                         AppColorsAndText.smallHeadline("Meditaiondsfasdfsdafsd",),
                                                         SizedBox(
                                                           height: 5,
                                                         ),
                                                         AppColorsAndText.smallHeadline("Meditaion")
                                                       ],

                                                     ),

                                                   ],
                                                 )
                            ]),
                                     decoration: BoxDecoration(
                                       color: Colors.indigoAccent,
                                         //border: Border(right: 2, )
                                       borderRadius: BorderRadius.only(topRight: Radius.circular(450), bottomRight: Radius.circular(2))
                                     ),
                                  ),
                                  Positioned(
                                    right: 2,
                                      bottom: -5,
                                      child: Container(
                                    height: 100,width: 100,
                                      child: Image(image: AssetImage(index%2==0?"assests/icons/play.png":"assests/icons/yoga.png"),)))
                          ,


                              ],
                            )
                )
                ),
              );

        }
        );
  }
}
