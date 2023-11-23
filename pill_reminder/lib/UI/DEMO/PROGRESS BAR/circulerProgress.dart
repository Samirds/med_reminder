import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Circu extends StatelessWidget {
   Circu({Key? key}) : super(key: key);

  double progress = 0.6;

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,height: 250,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  TweenAnimationBuilder(
                      tween: Tween(begin: 0.0, end: progress),
                      duration: Duration(seconds: 2),
                      builder: (context, progress, _){
                        return CircularProgressIndicator(
                          value: progress,
                          valueColor: AlwaysStoppedAnimation(Colors.red),
                          strokeWidth: 10,
                          backgroundColor: Colors.blue,

                        );
                      }),

                  Center(child: buildProgress(),)
                ],
              ),
            )
          ],
        ),
      ),
    );


  }
  Widget buildProgress(){
    if(progress==1){
      return Icon(Icons.done, color: Colors.yellow,
      size: 56,);
    }
    else{
      return Text('${(progress*100).toStringAsFixed((1))} %', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),);
    }

  }
}
