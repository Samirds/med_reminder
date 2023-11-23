
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputt extends StatelessWidget {
  Icon? prefixIconn;
  TextEditingController controllerName;
  String? label;
  String hint;
  TextInputType? isnumberr;
  TextStyle? hintStyle;
  TextStyle? textStyle;

  TextInputt({Key? key,
  required this.controllerName,
    this.label,
    required this.hint,
    this.prefixIconn,
    this.isnumberr = TextInputType.text,
    this.hintStyle = const TextStyle(fontSize: 15, color: Colors.black54),
    this.textStyle = const TextStyle(color: Colors.black54),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.indigo,
        style: textStyle,
        keyboardType: isnumberr,
        controller: controllerName,
        decoration: InputDecoration(
            prefixIcon: prefixIconn,
            labelText: label,
            hintText: hint,
            hintStyle: hintStyle,
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.indigo),
            border: const UnderlineInputBorder()),
      ),
    );
  }
}



