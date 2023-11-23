import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../UTILS/App Properties/appColors.dart';
import '../../../UTILS/Widgets Utils/App Icon/app_icons.dart';
import '../../../UTILS/Widgets Utils/TRANSPARENT BACKGROUND/transparent_container.dart';

class UserInfo extends StatefulWidget {
  UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
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
        padding:10 ,
        height: 230,
        width: double.maxFinite,
        blurFilterColor: Colors.indigoAccent,
        isPressed: _isPressed,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [

                  //---------------- Icon-------------
                  AppIcon(
                    backgroundcolor: Colors.white54,
                    iconSize: 50,
                    containerSize: 120, path: 'assests/icons/woman.png',),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        //---------------- Icon-------------
                        SizedBox(height: 10,),
                        AppColorsAndText.medHeadline("Samir Dasdfadsfasdf afsdfdsfdsffdsf", ),


                        //---------------- Age-------------
                        SizedBox(height: 5,),
                        AppColorsAndText.medHeadline("Age :  25"),


                        //---------------- Icon-------------
                        SizedBox(height: 5,),
                        AppColorsAndText.medHeadline("Weight :  60 Kg" ),
                        //Text("Weight :  60 Kg", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),


                        //---------------- Blood Grp-------------
                        SizedBox(height: 5,),
                        AppColorsAndText.medHeadline("Blood Grp :   B +ve", ),

                        //Text("Blood Grp :   B+ve", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("Health Status :  Normal", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            ],
          ),
        ),),
    );
  }
}
