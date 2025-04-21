import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/CompanyLogo.dart';
import 'package:task_togas/InputField.dart';
import 'package:task_togas/TextAndTitle.dart';
import 'package:task_togas/myMaterialButton.dart';

class Resetyourpassscreen extends StatefulWidget {
  const Resetyourpassscreen({super.key});

  @override
  State<Resetyourpassscreen> createState() => _ResetyourpassscreenState();
}

class _ResetyourpassscreenState extends State<Resetyourpassscreen> {
  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Companylogo(),
                SizedBox(height: deviceH * 0.02),
                Textandtitle(
                    title: "Reset Your Password",
                    text: "The Password must be diffrent than before"),
                SizedBox(height: deviceH * 0.04),
                MyInputField(isEmail: false, hintext: "New Password"),
                SizedBox(height: deviceH * 0.02),
                MyInputField(isEmail: false, hintext: "Confirm Password"),
                SizedBox(height: deviceH * 0.5),
                Mymaterialbutton(
                  onPressed: () {},
                  text: "Change Password",
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
