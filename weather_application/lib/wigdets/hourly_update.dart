// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HourlyUpdate extends StatelessWidget {
  HourlyUpdate({this.img, this.temp, this.time});
  String? temp;
  String? img;
  String? time;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * 0.15,
      width: width * 0.2,
      decoration: BoxDecoration(
        border: Border.all(
          width: width * 0.002,
          color: Colors.white.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(width * 0.08),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            temp!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Image(height: height * 0.04, image: AssetImage(img!)),
          SizedBox(height: height * 0.01),
          Text(
            time!,
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: height * 0.02,
            ),
          ),
        ],
      ),
    );
  }
}
