import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';

import '../../../UTILS/Widgets Utils/App Icon/app_icons.dart';
import '../../../UTILS/Widgets Utils/Circular PrgressBar/circular_progress_bar.dart';



class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  double progress = 0.7;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    //image: DecorationImage(image: AssetImage("assests/images/design_rainbow.png"),fit: BoxFit.fill),
                  gradient: AppColorsAndText.bodyColorGradientLight
                ),
                child: Column(
                  children: [

                    //TransparentContainer(height: 150, width: 150, blurFilterColor: Colors.indigoAccent,),


                    Container(
                      padding: EdgeInsets.all(10),
                      height: 225,child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child:  BackdropFilter(// we basically use backdrop to blue the backgroudn image but here is img so not useflu
                        //filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
                        filter: ColorFilter.mode(Colors.indigoAccent, BlendMode.hue),
                        child: Container(
                            height: 175,
                            decoration: BoxDecoration(

                                color: Colors.white54.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(width: 2, color: Colors.white54)

                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      AppIcon(
                                        backgroundcolor: Colors.white54,
                                        iconSize: 50,
                                        containerSize: 120, path: 'assests/icons/woman.png',),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 10,),
                                            Text("Sami Das Fodsfhaosdhfuiog", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), overflow: TextOverflow.ellipsis,),

                                            SizedBox(height: 5,),
                                            AppColorsAndText.medHeadline("Age :  25"),
                                            // Text("Age :  25", style: AppColors.headlineStyle(textColor: Colors.white54)),
                                            SizedBox(height: 5,),
                                            Text("Weight :  60 Kg", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                            SizedBox(height: 5,),
                                            Text("Blood Grp :   B+ve", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Text("Health Status :  Normal", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ],
                              ),
                            )
                          //color: Colors.white.withOpacity(0.3),
                        ),
                      ),

                    ),),

                    //SizedBox(height: 10,),

                    Container(
                      height: 250,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index){
                            return Container(
                              margin: EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              //color: Colors.red,
                              child: ClipRRect(

                                borderRadius: BorderRadius.circular(25),
                                child:  BackdropFilter(// we basically use backdrop to blue the backgroudn image but here is img so not useflu
                                  //filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
                                  filter: ColorFilter.mode(index%3==1?Colors.greenAccent:index%3==2?Colors.pinkAccent:Colors.lightBlueAccent, BlendMode.darken),
                                  child: Container(
                                      height: 200,width: 200,
                                      decoration: BoxDecoration(
                                          color: Colors.white54.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(25),
                                          border: Border.all(width: 2, color: Colors.white54)

                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Healthy",
                                                style:TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Colors.lightGreenAccent)),
                                            Text("5/8 Completed",style:TextStyle(fontSize: 18, color: Colors.yellow)),
                                            SizedBox(height: 10,),
                                            // Center(
                                            //   child: SizedBox(
                                            //     width: 100,height: 100,
                                            //     child: Stack(
                                            //       fit: StackFit.expand,
                                            //       children: [
                                            //         TweenAnimationBuilder(
                                            //             tween: Tween(begin: 0.0, end: progress),
                                            //             duration: Duration(seconds: 1),
                                            //             builder: (context, progress, _){
                                            //               return CircularProgressIndicator(
                                            //                 value: progress,
                                            //                 valueColor: AlwaysStoppedAnimation(index%3==1?Colors.greenAccent:index%3==2?Colors.pinkAccent:Colors.lightBlueAccent,),
                                            //                 strokeWidth: 10,
                                            //                 backgroundColor: Colors.white54,
                                            //
                                            //               );
                                            //             }),
                                            //
                                            //         Center(child: buildProgress(),)
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),

                                            CircularProgress(
                                                width: 100,
                                                height: 100, progress: 0.75,
                                                progressColor: index%3==1?Colors.greenAccent:index%3==2?Colors.pinkAccent:Colors.lightBlueAccent,
                                                afterCompIconSize: 54),
                                            SizedBox(height: 15,),
                                            Container(
                                              width: 120, height: 25,
                                              color: Colors.white, child: Row(
                                              children: [
                                                Icon(Icons.add_box_outlined),
                                                SizedBox(width: 5,),
                                                Text('Add to Todo', style: TextStyle(fontWeight: FontWeight.w500),)
                                              ],
                                            ),),


                                          ],
                                        ),
                                      )
                                    //color: Colors.white.withOpacity(0.3),
                                  ),
                                ),

                              ),
                            );
                          }),
                    ),




                    SizedBox(height: 15,),


                    Container(
                        padding: EdgeInsets.all(10),
                        width: double.maxFinite,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child:  BackdropFilter(// we basically use backdrop to blue the backgroudn image but here is img so not useflu
                                filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
                                //filter: ColorFilter.mode(Colors.indigoAccent, BlendMode.hue),
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 370,
                                    decoration: BoxDecoration(

                                        color: Colors.white54.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(width: 2, color: Colors.white54)

                                    ),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [

                                      Text("On Going Courses", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.yellowAccent),),
                                      Expanded(child: ListView.builder(
                                        shrinkWrap: true,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount:10,
                                          itemBuilder: (context, index){
                                          // return ClipRRect(
                                          //   borderRadius: BorderRadius.circular(25),
                                          //   child: BackdropFilter(
                                          //     filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
                                          //     child: Container(
                                          //       margin: EdgeInsets.only(top: 10),
                                          //       decoration: BoxDecoration(
                                          //
                                          //           color: Colors.white54.withOpacity(0.3),
                                          //           borderRadius: BorderRadius.circular(25),
                                          //           border: Border.all(width: 2, color: Colors.white54)
                                          //
                                          //       ),
                                          //       height: 100,
                                          //       child: Container(
                                          //         //margin: EdgeInsets.only(top: 10),
                                          //         padding: EdgeInsets.only(left: 10),
                                          //
                                          //         child: Row(
                                          //           children: [
                                          //
                                          //             Image(image: AssetImage("assests/icons/syrup.png",),fit: BoxFit.contain,width: 50,),
                                          //               //color: Colors.red,
                                          //
                                          //             Expanded(child: Container())
                                          //           ],
                                          //         ),
                                          //
                                          //           //child: Text("hellow")
                                          //       ),),
                                          //   ),
                                          // );
                                            return

                                              ListTile(
                                                tileColor: Colors.green,
                                                dense: true,
                                                isThreeLine: false,
                                                title: Text("Medicine Is DP-4 Inhabitor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, ),overflow: TextOverflow.ellipsis,),
                                                leading: Image(image: AssetImage("assests/icons/syrup.png",)),
                                                subtitle: Text("before meal", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white, ),),
                                                trailing: Icon(Icons.menu),
                                              );

                                        }))

                                ]
                                )))),
                    )],

                ),
              ),
            ),
          );
        }
      ),
    );
  }

   Widget buildProgress(){
     if(progress==1){
       return Icon(Icons.done, color: Colors.black87,
         size: 56,);
     }
     else{
       return Text('${(progress*100).toStringAsFixed((1))} %', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),);
     }

   }
}
