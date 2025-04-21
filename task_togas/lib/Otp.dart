import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/CompanyLogo.dart';
import 'package:task_togas/InputField.dart';
import 'package:task_togas/TextAndTitle.dart';
import 'package:task_togas/myMaterialButton.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Companylogo(),
              SizedBox(height: deviceH * 0.03),
              Textandtitle(
                title: "Forgot Password",
                text: "Enter your Email acoount to reset password",
              ),
              SizedBox(height: deviceH * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyInputField(
                    isOTP: true,
                  ),
                  MyInputField(
                    isOTP: true,
                  ),
                  MyInputField(
                    isOTP: true,
                  ),
                  MyInputField(
                    isOTP: true,
                  ),
                ],
              ),
              SizedBox(height: deviceH * 0.34),
              Mymaterialbutton(
                onPressed: () {},
                text: "Verify Now",
                color: myLightGreen,
              ),
              SizedBox(height: deviceH * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didnt you Receive any code?"),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resend Code",
                        style: TextStyle(
                            color: myDarkgreen,
                            decoration: TextDecoration.underline),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
