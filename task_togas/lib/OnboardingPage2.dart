import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/myOnboarding.dart';
import 'package:task_togas/onboardingPage3.dart';

class Onboardingpage2 extends StatefulWidget {
  @override
  State<Onboardingpage2> createState() => _Onboardingpage2State();
}

class _Onboardingpage2State extends State<Onboardingpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyOnboarding(
          onPressed1: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Onboardingpage3()));
          },
          onPressed2: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Onboardingpage3()));
          },
          containerC2: myDarkgreen,
          image: "assets/IMG-20250314-WA0004-removebg-preview.png",
          title: "User-Friendly at its Core",
          text:
              "Discover the essence of user-friendliness as our\ninterface empowers you with intutive controls and\n                       effortless interactions"),
    );
  }
}
