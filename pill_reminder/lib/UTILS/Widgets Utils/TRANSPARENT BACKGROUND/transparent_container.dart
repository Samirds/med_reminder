import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransparentContainer extends StatelessWidget {
  double height;
  double width;
  double? padding;
  double? brdrRadious;
  Color blurFilterColor;
  Widget child;
  bool isPressed;
  TransparentContainer({Key? key,
    required this.height,
    required this.width,
    this.padding = 10.0,
    this.brdrRadious = 25.0,
    required this.blurFilterColor,
    required this.child,
    required this.isPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: EdgeInsets.all(padding!),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(brdrRadious!),
            child: BackdropFilter(   // we basically use backdrop to blue the backgroudn image but here is img so not usefull
              filter: ColorFilter.mode(blurFilterColor, BlendMode.hue),
              child: Container(
                decoration:BoxDecoration(
                  color: Colors.white54.withOpacity(isPressed?0.1:0.3),
                    borderRadius: BorderRadius.circular(brdrRadious!),
                    border: Border.all(width: 2, color: Colors.white54)
                ),
                child: child
              )
            ),
          ),

    );
  }
}

