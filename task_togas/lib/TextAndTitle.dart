import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';

class Textandtitle extends StatelessWidget {
  Textandtitle({
    this.title = "",
    this.text = "",
  });

  String? title;
  String? text;

  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Text(
          title!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: deviceH * 0.01,
        ),
        Text(
          text!,
          style: TextStyle(color: iconClr),
        ),
      ],
    );
  }
}
