import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/Signup.dart';
import 'package:task_togas/loginScreen.dart';
import 'package:task_togas/myOnboarding.dart';

class Onboardingpage3 extends StatefulWidget {
  const Onboardingpage3({super.key});

  @override
  State<Onboardingpage3> createState() => _Onboardingpage3State();
}

class _Onboardingpage3State extends State<Onboardingpage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyOnboarding(
          text1: "Sign In",
          text2: "Sign Up",
          onPressed1: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Loginscreen()));
          },
          onPressed2: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Signup()));
          },
          containerC3: myDarkgreen,
          image: "assets/IMG-20250314-WA0001-removebg-preview.png",
          title: "Easy Task Creation",
          text:
              "        Quickly add tasks, set due dates, and add\n descriptions with ease using our task manager app.\n        Simplify your workflow and stay organized"),
    );
  }
}
