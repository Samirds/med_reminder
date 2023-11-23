import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_reminder/UI/PAGES/HOME/home_page.dart';
import 'package:pill_reminder/UTILS/App%20Properties/appColors.dart';

class CircularProgress extends StatelessWidget {
  double progress;
  Color progressColor;
  double height;
  double width;
  double afterCompIconSize;
  Color? afterCompIconColor;
  CircularProgress({Key? key,
    required this.width,
    required this.height,
    required this.progress,
    required this.progressColor,
    required this.afterCompIconSize,
    this.afterCompIconColor = Colors.black87}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            TweenAnimationBuilder(     // its used for animation
                tween: Tween(begin: 0.0, end: progress),
                duration: Duration(seconds: 1),
                builder: (context, progress, _){
                    return CircularProgressIndicator(
                        value: progress,
                        valueColor: AlwaysStoppedAnimation(progressColor),
                        strokeWidth: 10,
                        backgroundColor: Colors.white54,

                  );
                    }),
            Center(
              child: buildProgress(),
            )

          ],
        )
      ),
    );
  }


  Widget buildProgress(){
    if(progress==1){
      return Icon(Icons.done, color: afterCompIconColor,
        size: afterCompIconSize,);
    }
    else{
      return AppColorsAndText.medHeadline("${(progress*100).toStringAsFixed(1)} %");
    }

  }
}
