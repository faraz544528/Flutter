import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';

class Mymaterialbutton extends StatelessWidget {
  Mymaterialbutton({
    required this.onPressed,
    required this.text,
    this.borderClr,
    this.color,
    this.icon,
  });
  IconData? icon;
  Color? borderClr;
  String text;
  Color? color;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    return Container(
      child: MaterialButton(
        minWidth: double.infinity,
        height: deviceH * 0.05,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            side: borderClr != null
                ? BorderSide(color: borderClr!)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon, size: 25),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20, color: color != null ? myDarkgreen : color),
            ),
          ],
        ),
      ),
    );
  }
}
