import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../App Properties/appColors.dart';
import '../App Icon/app_icons.dart';
import '../TRANSPARENT BACKGROUND/transparent_container.dart';

Widget btmshtWidget(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // ----------------------------- medicine Section -------------------------------------------
      TransparentContainer(
        height: 0,
        width: 0,
        padding: 5,
        isPressed: false,
        blurFilterColor: Colors.indigoAccent,
        child: Container(
            height: 105,
            child: Row(
              children: [
                //------------------------------- Medicine Image --------------------------------
                Container(
                  width: 70,
                  child: Image(
                    image: AssetImage(
                      //"assests/images/backGrndImg.jpg"),
                        "assests/icons/syrup.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: 20,),
                //----------------------------------- Medicine Details ---------------------------
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //----------------------------------------- Pill Name ---------------------------------------
                          AppColorsAndText.smallHeadline("Pill Name :"),
                          AppColorsAndText.medHeadline("Gabapetinin ...  | 300 mg"),
                          SizedBox(height: 7,),
                          //----------------------------------------- Pill Dose ---------------------------------------
                          // AppColorsAndText.smallHeadline("Pill Dose :"),
                          // AppColorsAndText.medHeadline("300 mg"),
                          // SizedBox(height: 7,),
                          //----------------------------------------- Next Time ---------------------------------------
                          AppColorsAndText.smallHeadline("Dose Time :"),
                          AppColorsAndText.medHeadline("7 A.M  | 12 P.M   | 9 P.M")


                        ],
                      ),
                    )
                )
              ],
            )
        ),
      ),

      //------------------------------------------------ Before or After Eat -----------------------
      //SizedBox(height: 7,),
      AppColorsAndText.medHeadline("Taking Process"),
      Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            //------------------------------------------ Before Eat -------------------------------
            TransparentContainer(
                height: 0, width: 0, blurFilterColor: Colors.blue, padding: 5,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: AppColorsAndText.smallHeadline("Before Eat"),
                ),
                isPressed: false),
            //------------------------------------------ After Eat -------------------------------
            TransparentContainer(
                height: 0, width: 0, blurFilterColor: Colors.blue, padding: 5,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: AppColorsAndText.smallHeadline("After Eat"),
                ),
                isPressed: false),
            //------------------------------------------ Custome Eat -------------------------------
            TransparentContainer(
                height: 0, width: 0, blurFilterColor: Colors.green, padding: 5,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: AppColorsAndText.smallHeadline(" Custome +"),
                ),
                isPressed: false),
          ],
        ),
      ),


      //------------------------------------------------ More Info--------------------------
      AppColorsAndText.medHeadline("More Info."),
      //SizedBox(height: 7,),

      //// ----------------------------- Medicine Properties -------------------------------------------
      Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        height: 176,
        //color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                //--------------------------- Next Dose Time-------------------
                TransparentContainer(
                  height: 0,
                  width: 0,
                  padding: 10,
                  blurFilterColor: Colors.green,
                  isPressed: false,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Row(
                      children: [
                        AppIcon(
                          backgroundcolor: Colors.white54,
                          iconSize: 0,
                          containerSize: 50,
                          path: 'assests/icons/health_tracker.png',
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          width: 100,
                          child: Column(
                            children: [
                              AppColorsAndText.medHeadline(
                                  "Next Dose"),
                              AppColorsAndText.smallHeadline(
                                  "3 P.M")
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                //--------------------------- Next Dose Time-------------------
                TransparentContainer(
                  height: 0,
                  width: 0,
                  padding: 5,
                  blurFilterColor: Colors.green,
                  isPressed: false,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Row(
                      children: [
                        AppIcon(
                          backgroundcolor: Colors.white54,
                          iconSize: 0,
                          containerSize: 50,
                          path: 'assests/icons/capsule.png',
                        ),
                        SizedBox(
                          width: 7,
                        ),

                        Container(
                          width: 100,
                          child: Column(
                            children: [
                              AppColorsAndText.medHeadline(
                                  "Amount"),
                              AppColorsAndText.smallHeadline(
                                  "2 pill/Day")
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                //--------------------------- Cause-------------------
                TransparentContainer(
                  height: 0,
                  width: 0,
                  padding: 10,
                  blurFilterColor: Colors.green,
                  isPressed: false,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Row(
                      children: [
                        AppIcon(
                          backgroundcolor: Colors.white54,
                          iconSize: 0,
                          containerSize: 50,
                          path: 'assests/icons/task.png',
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          width: 100,
                          child: Column(
                            children: [
                              AppColorsAndText.medHeadline(
                                  "Cause"),
                              AppColorsAndText.smallHeadline(
                                  "Diabetic fadlsjfds")
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                //--------------------------- this Month -------------------
                TransparentContainer(
                  height: 0,
                  width: 0,
                  padding: 5,
                  blurFilterColor: Colors.green,
                  isPressed: false,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Row(
                      children: [
                        AppIcon(
                          backgroundcolor: Colors.white54,
                          iconSize: 0,
                          containerSize: 50,
                          path: 'assests/icons/calendar.png',
                        ),
                        SizedBox(
                          width: 7,
                        ),

                        Container(
                          width: 100,
                          child: Column(
                            children: [
                              AppColorsAndText.medHeadline(
                                  "Remaining"),
                              AppColorsAndText.smallHeadline(
                                  "2 / 30 Pills")
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),

      //-------------------------------------------------------  Edit Btn--------------------------------------
      Expanded(
        child: Center(
          child: Container(

              width: 200,
              decoration: BoxDecoration(
                //color: Colors.blue,
                  borderRadius: BorderRadius.circular(24)
              ),
              child: Center(
                child: AppColorsAndText.medHeadline("Edit"),
              )
          ),
        ),
      )
    ],
  );
}