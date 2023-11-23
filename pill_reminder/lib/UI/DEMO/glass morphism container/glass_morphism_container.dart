import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';

class GlassMorphism extends StatefulWidget {
   GlassMorphism({Key? key}) : super(key: key);
  @override
  State<GlassMorphism> createState() => _GlassMorphismState();
}

class _GlassMorphismState extends State<GlassMorphism> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: 500,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: AppColorsAndText.bodyColorGradientLight,
        ),
        child: GestureDetector(
          onTapDown: (_){
            setState(() {
              isPressed = true;
            });
          },
          onTapUp: (_){
            setState(() {
              isPressed = false;
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child:  BackdropFilter(// we basically use backdrop to blue the backgroudn image but here is img so not useflu
              //filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
               filter: ColorFilter.mode(Colors.indigoAccent, BlendMode.hue),
              child: Container(
                  height: 250,width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white54.withOpacity(isPressed?0.1:0.3),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2, color: Colors.white54)

                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Glass",
                            style:TextStyle(fontSize: 30,fontWeight: FontWeight.w500, color: Colors.limeAccent)),
                        Text("5/8 Completed",style:TextStyle(fontSize: 18, color: Colors.limeAccent)),
                        SizedBox(height: 10,),
                        Center(child: Icon(Icons.confirmation_number_sharp),),
                        Container(
                          width: 120, height: 25,
                          color: Colors.white, child: Row(
                          children: [
                            Icon(Icons.dangerous_outlined),
                            SizedBox(width: 5,),
                            Text('Added to Todo')
                          ],
                        ),)


                      ],
                    ),
                  )
                  //color: Colors.white.withOpacity(0.3),
                ),
            ),

          ),
        ),
      ),
    );
  }
}
