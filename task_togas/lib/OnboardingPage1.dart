import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/CompanyLogo.dart';
import 'package:task_togas/OnboardingPage2.dart';
import 'package:task_togas/myMaterialButton.dart';
import 'package:task_togas/myOnboarding.dart';
import 'package:task_togas/onboardingPage3.dart';

class Onboardingpage1 extends StatefulWidget {
  @override
  State<Onboardingpage1> createState() => _Onboardingpage1State();
}

class _Onboardingpage1State extends State<Onboardingpage1> {
  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: MyOnboarding(
          onPressed1: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Onboardingpage2()));
          },
          onPressed2: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Onboardingpage3()));
          },
          image: "assets/IMG-20250314-WA0004-removebg-preview.png",
          title: "Text Up For Success",
          text:
              "Get ready to unleash your potential and witness  \n      power to teamwork as we embark on this\n                       extraordinary projects",
          containerC1: myDarkgreen,
        ));
  }
}
