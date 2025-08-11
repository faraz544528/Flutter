import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClimateDetails extends StatelessWidget {
  ClimateDetails({this.condition, this.calculatedTemp, this.icon});
  String? condition;
  String? calculatedTemp;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        SizedBox(height: height * 0.01),
        Icon(
          icon,
          color: Colors.white,
          weight: 50,
        ),
        Text(
          calculatedTemp!,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        Text(
          condition!,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
