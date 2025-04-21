import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/CompanyLogo.dart';
import 'package:task_togas/myMaterialButton.dart';

class MyOnboarding extends StatelessWidget {
  MyOnboarding({
    required this.onPressed1,
    required this.onPressed2,
    required this.image,
    required this.title,
    required this.text,
    this.containerC1,
    this.containerC2,
    this.containerC3,
    this.text1,
    this.text2,
  });
  VoidCallback onPressed1;
  VoidCallback onPressed2;
  String image;
  Color? containerC1;
  Color? containerC2;
  Color? containerC3;
  String title;
  String text;
  String? text1;
  String? text2;

  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: deviceH * 0.04),
          Companylogo(), //Custom class
          Image(image: AssetImage(image)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: deviceH * 0.005,
                width: deviceW * 0.02,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerC1 ?? Colors.grey,
                ),
              ),
              SizedBox(width: deviceW * 0.005),
              Container(
                height: deviceH * 0.005,
                width: deviceW * 0.02,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerC2 ?? Colors.grey,
                ),
              ),
              SizedBox(width: deviceW * 0.005),
              Container(
                height: deviceH * 0.005,
                width: deviceW * 0.02,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerC3 ?? Colors.grey,
                ),
              ),
            ],
          ),

          SizedBox(
            height: deviceH * 0.03,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: deviceH * 0.01,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey.shade600),
          ),
          SizedBox(height: deviceH * 0.04),
          Mymaterialbutton(
            onPressed: onPressed1,
            color: myLightGreen,
            text: text1 ?? "Next",
          ),
          SizedBox(height: deviceH * 0.02),
          Mymaterialbutton(
            onPressed: onPressed2,
            borderClr: Colors.grey,
            text: text2 ?? "Skip",
          )
        ],
      ),
    );
  }
}
