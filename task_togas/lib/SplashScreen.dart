import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/CompanyLogo.dart';
import 'package:task_togas/InputField.dart';
import 'package:task_togas/OnboardingPage1.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Onboardingpage1()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: myLightGreen,
      body: Companylogo(),
    );
  }
}
