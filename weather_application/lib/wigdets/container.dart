import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:weather_application/screens/data/colors.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({this.child, this.hgt});

  Widget? child;
  bool? hgt;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return GlowContainer(
      height: hgt! ? height * 0.75 : height * 0.45,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.only(
        top: height * 0.01,
        left: width * 0.08,
        right: width * 0.08,
      ),
      width: double.infinity,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(width * 0.17),
        bottomRight: Radius.circular(width * 0.17),
      ),
      // ignore: deprecated_member_use
      glowColor: Color(0xff00A1FF).withOpacity(0.5),
      spreadRadius: 5,
      color: appbarClr,
      child: child,
    );
  }
}
