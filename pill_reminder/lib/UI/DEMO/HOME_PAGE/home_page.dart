import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:pill_reminder/LOGIC/controllers/theme_controller.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool d;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dd();
  }

  double progress = 1.0;



  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  dd()async{
     d =  await Get.find<ThemeController>().getTheme();
     print("dsd s   $d");
  }








  @override
  Widget build(BuildContext context) {



    return GetBuilder<ThemeController>(builder: (themeController){
      return Scaffold(
        //backgroundColor: Colors.indigoAccent[700],
          appBar: AppBar(
            leading: GestureDetector(
              onTap: ()async {
                setState(() {
                   d = !d;
                   themeController.setTheme(d);
                  print("\n\n $d");
                });
              },
              child: Icon(Icons.nightlight_outlined),
            ),

          ),
          body: Container(
              decoration:  BoxDecoration(
                gradient: themeController.isDarkModeSelcted?AppColorsAndText.bodyColorGradientDark:AppColorsAndText.bodyColorGradientLight,

              ),

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hello World", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color:Colors.blueGrey),),
                    SizedBox(height: 20,),
                    Text("Hello World", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500, color: AppColorsAndText.normalTextColorDark),),
                    SizedBox(height: 20,),
                    Text("Hello World", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),),

                    SizedBox(height: 15,),

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
                                              Center(
                                                child: SizedBox(
                                                  width: 100,height: 100,
                                                  child: Stack(
                                                    fit: StackFit.expand,
                                                    children: [
                                                      TweenAnimationBuilder(
                                                          tween: Tween(begin: 0.0, end: progress),
                                                          duration: Duration(seconds: 1),
                                                          builder: (context, progress, _){
                                                            return CircularProgressIndicator(
                                                              value: progress,
                                                              valueColor: AlwaysStoppedAnimation(index%3==1?Colors.greenAccent:index%3==2?Colors.pinkAccent:Colors.lightBlueAccent,),
                                                              strokeWidth: 10,
                                                              backgroundColor: Colors.white54,

                                                            );
                                                          }),

                                                      Center(child: buildProgress(),)
                                                    ],
                                                  ),
                                                ),
                                              ),
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


                  ],
                ),
              ),
            ),

      );
    });

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