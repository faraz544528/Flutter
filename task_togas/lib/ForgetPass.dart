import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/CompanyLogo.dart';
import 'package:task_togas/InputField.dart';
import 'package:task_togas/TextAndTitle.dart';
import 'package:task_togas/myMaterialButton.dart';

import 'Otp.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({super.key});

  @override
  State<Forgetpass> createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Companylogo(),
                SizedBox(height: deviceH * 0.03),
                Textandtitle(
                  title: "Forgot Password",
                  text: "Enter your Email acoount to reset password",
                ),
                Image(
                    image: AssetImage(
                        "assets/IMG-20250314-WA0002-removebg-preview.png")),
                SizedBox(height: deviceH * 0.03),
                MyInputField(
                  hintext: "Enter Your Email",
                ),
                SizedBox(height: deviceH * 0.1),
                Mymaterialbutton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Otp()));
                  },
                  text: "Reset",
                  color: myLightGreen,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
